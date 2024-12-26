const xsltProcessor = new XSLTProcessor();
const skirmishFrame = document.getElementById("report-frame");

document.addEventListener("DOMContentLoaded", () => {
    ui();
})

function handleFileContent(content) {
    const parser = new DOMParser();
    const doc = parser.parseFromString(content, "text/xml");
    const errorNode = doc.querySelector('parsererror');
    if (errorNode) {
        throw "Failed to parse file";
    }
    return doc;
}

function handleFileUpload(file) {
    return file.text().then(handleFileContent).catch(alert).then((doc) => [file.name, doc]);
}

function playerNames(doc) {
    const resolver = doc.createNSResolver(doc);
    const playerNodes = doc.evaluate("//PlayerName", doc, resolver, XPathResult.UNORDERED_NODE_ITERATOR_TYPE);

    const playerNames = [];
    let node = null;
    while(node = playerNodes.iterateNext()) {
        playerNames.push(node.textContent);
    }

    return playerNames;
}

function statWins(doc, player) {
    const resolver = doc.createNSResolver(doc);
    const playerTeam = doc.evaluate(`//TeamReportOfShipBattleReportCraftBattleReport[.//PlayerName="${player}"]//TeamID`, doc, resolver, XPathResult.STRING_TYPE);
    const winningTeam = doc.evaluate("/FullAfterActionReport/WinningTeam", doc, resolver, XPathResult.STRING_TYPE);

    return playerTeam.stringValue === winningTeam.stringValue ? 1 : 0;
}

function statLosses(doc, player) {
    return Math.abs(1 - statWins(doc, player));
}

function statDamageTotal(doc, player) {
    return statDamageShips(doc, player) + statDamageCraft(doc, player);
}

function statDamageShips(doc, player) {
    const resolver = doc.createNSResolver(doc);
    const damageFromPlayer = doc.evaluate(`//AARPlayerReportOfShipBattleReportCraftBattleReport[.//PlayerName="${player}"]/Ships/ShipBattleReport/TotalDamageDealt`, doc, resolver, XPathResult.UNORDERED_NODE_ITERATOR_TYPE);

    let damage = 0;
    let damageNode = null;
    while(damageNode = damageFromPlayer.iterateNext()) {
        damage += parseInt(damageNode.textContent, 10);
    }

    return damage;
}

function statDamageTaken(doc, player) {
    const resolver = doc.createNSResolver(doc);
    const damageFromPlayer = doc.evaluate(`//AARPlayerReportOfShipBattleReportCraftBattleReport[.//PlayerName="${player}"]/Ships/ShipBattleReport/TotalDamageReceived`, doc, resolver, XPathResult.UNORDERED_NODE_ITERATOR_TYPE);

    let damage = 0;
    let damageNode = null;
    while(damageNode = damageFromPlayer.iterateNext()) {
        damage += parseInt(damageNode.textContent, 10);
    }

    return damage;
}

function statDamageCraft(doc, player) {
    const resolver = doc.createNSResolver(doc);
    const damageFromPlayer = doc.evaluate(`//AARPlayerReportOfShipBattleReportCraftBattleReport[.//PlayerName="${player}"]/Craft/CraftBattleReport/TotalDamageDealt`, doc, resolver, XPathResult.UNORDERED_NODE_ITERATOR_TYPE);
   
    let damage = 0;
    let damageNode = null;
    while(damageNode = damageFromPlayer.iterateNext()) {
        damage += parseInt(damageNode.textContent, 10);
    }

    return damage;
}

function appendWins(a, b) { return a + b; }
function appendLosses(a, b) { return a + b; }
function appendDamage(a, b) { return a + b; }

const stats = {
    "Total Wins": statWins,
    "Total Losses": statLosses,
    "Total Damage Done": statDamageTotal,
    "Total Damage Taken": statDamageTaken,
    "Damage Done With Craft": statDamageCraft
};

const statAppenders = {
    "Total Wins": appendWins,
    "Total Losses": appendLosses,
    "Total Damage Done": appendDamage,
    "Total Damage Taken": appendDamage,
    "Damage Done With Craft": appendDamage
}

function collectStats(doc, player) {
    const ret = {};
    Object.keys(stats).forEach((statName) => {
        ret[statName] = stats[statName](doc, player);
    });
    return ret;
}

let allPlayers = {};
function collectPlayersAndStats(docs) {
    docs.forEach(([_, doc]) => {
        const players = playerNames(doc);
        players.forEach((player) => {
            const playerStats = collectStats(doc, player);
            if (allPlayers[player]) {
                Object.keys(allPlayers[player]).forEach((statKey) => {
                    allPlayers[player][statKey] = statAppenders[statKey](allPlayers[player][statKey], playerStats[statKey]);
                });
            } else {
                allPlayers[player] = playerStats;
            }
        });
    });

    return allPlayers;
}

function renderStats(docs, sortKey) {
    const statHead = document.querySelector("#stats .stat-head");
    const statTable = document.querySelector("#stats .stat-table");
    statHead.innerHTML = "";
    statTable.innerHTML = "";

    const nameTh = document.createElement("th");
    nameTh.texContent = "Player";
    statHead.appendChild(nameTh);

    Object.keys(stats).forEach((statName) => {
        const th = document.createElement("th");
        const button = document.createElement("button");
        button.textContent = statName;
        button.onclick = () => {
            renderStats([], statName);
        };
        if (sortKey === statName) {
            button.textContent = statName + " *"
        }
        th.appendChild(button);
        statHead.appendChild(th);
    })
    const playersAndStats = collectPlayersAndStats(docs);
    const sorted = sortPlayersAndStats(playersAndStats, sortKey);
    sorted.reverse().forEach(([player, stats]) => {
        const tr = document.createElement("tr");
        const rowCell = document.createElement("td");
        rowCell.textContent = player;
        tr.appendChild(rowCell);
        Object.keys(stats).forEach((statName) => {
            const statVal = stats[statName];
            const td = document.createElement("td");
            if (statName === "Damage Done With Craft") {
                td.innerHTML = Intl.NumberFormat().format(statVal) + ` (${((1.0 * statVal / stats["Total Damage Done"]) * 100).toFixed(0)}%)`;
            } else {
                td.innerHTML = Intl.NumberFormat().format(statVal);
            }
            tr.appendChild(td);
        });
        statTable.appendChild(tr);
    });
}

function sortPlayersAndStats(playersAndStats, sortKey) {
    return Object.entries(playersAndStats).sort((a, b) => {
        if (a[1][sortKey] < b[1][sortKey]) {
            return -1;
        } else if (a[1][sortKey] > b[1][sortKey]) {
            return 1;
        } else {
            return 0;
        }
    });
}

function ui() {
    const dragTarget = document.getElementById("drag-target");
    const fileInput = document.getElementById("report-file");

    fileInput.addEventListener("change", (e) => {
        const docPromises = [];
        if (fileInput.files) {
            [...fileInput.files].forEach((file, i) => {
                if (file.name.endsWith(".xml")) {
                    docPromises.push(handleFileUpload(file));
                }
            });
        }
        Promise.all(docPromises).then((docs) => {
            renderStats(docs, Object.keys(stats)[0]);
        });
    });

    dragTarget.addEventListener("drop", (e) => {
        e.preventDefault();
        dragTarget.classList.remove("dragging");
        const docPromises = [];

        if (e.dataTransfer.files) {
            [...e.dataTransfer.files].forEach((file, i) => {
                if (file.name.endsWith(".xml")) {
                    docPromises.push(handleFileUpload(file));
                }
            });
        }

        Promise.all(docPromises).then((docs) => {
            renderStats(docs, Object.keys(stats)[0]);
        });
    });

    dragTarget.addEventListener("dragenter", (e) => {
        e.preventDefault();
        dragTarget.classList.add("dragging");
    });
    dragTarget.addEventListener("dragover", (e) => {
        e.preventDefault();
    });
    dragTarget.addEventListener("dragleave", (e) => {
        e.preventDefault();
        dragTarget.classList.remove("dragging");
    });

    dragTarget.classList.remove("disabled");
}