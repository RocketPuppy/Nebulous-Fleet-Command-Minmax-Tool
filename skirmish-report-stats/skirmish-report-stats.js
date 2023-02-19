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

const ospHullKeys = [
    "Stock/Shuttle",
    "Stock/Tugboat",
    "Stock/Bulk Feeder",
    "Stock/Container Hauler",
    "Stock/Bulk Hauler",
    "Stock/Ocello Cruiser",
];

const ansHullKeys = [
    "Stock/Sprinter Corvette",
    "Stock/Raines Frigate",
    "Stock/Keystone Destroyer",
	"Stock/Vauxhall Light Cruiser",
    "Stock/Axford Heavy Cruiser",
    "Stock/Solomon Battleship",
];

/*
* Players
* Who won
* Points values brought (to offset point inequality bias if that ever happens)
- Map
- Ranks of participating players and what team they were on (to offset rank bias)
*/
function handleFileUpload(file) {
    return file.text().then(handleFileContent).catch(alert).then((xmlDoc) => {
        const resolver = xmlDoc.createNSResolver(xmlDoc);

        const teams = [];

        const winningTeam = xmlDoc.evaluate("//WinningTeam", xmlDoc, resolver, XPathResult.STRING_TYPE).stringValue;
        const teamReports = xmlDoc.evaluate("//TeamReportOfShipBattleReport", xmlDoc, resolver, XPathResult.UNORDERED_NODE_ITERATOR_TYPE);
        let report = teamReports.iterateNext();
        while(report) {
            const teamID = xmlDoc.evaluate("./TeamID", report, resolver, XPathResult.STRING_TYPE).stringValue;
            const players = xmlDoc.evaluate(".//PlayerName", report, resolver, XPathResult.UNORDERED_NODE_ITERATOR_TYPE);

            const playersRet = [];

            let player = players.iterateNext();
            while(player) {
                playersRet.push(player.textContent);

                player = players.iterateNext();
            }
            let points = xmlDoc.evaluate(".//OriginalPointCost", report, resolver, XPathResult.UNORDERED_NODE_ITERATOR_TYPE);
            let point = points.iterateNext();
            let sum = 0;
            while(point) {
                sum += parseInt(point.textContent, 10);
                point = points.iterateNext();
            }
            let ships = xmlDoc.evaluate(".//HullKey", report, resolver, XPathResult.UNORDERED_NODE_ITERATOR_TYPE);
            let ship = ships.iterateNext();
            let isOsp = false;
            let isAns = false;
            while(ship) {
                if(ansHullKeys.includes(ship.textContent)) {
                    isAns = true;
                } else if (ospHullKeys.includes(ship.textContent)) {
                    isOsp = true;
                }
                ship = ships.iterateNext();
            }

            let faction = "";
            if (isOsp && isAns) {
                faction = "OSP/ANS";
            } else if (isOsp) {
                faction = "OSP";
            } else if (isAns) {
                faction = "ANS";
            }

            const team = {
                team: teamID,
                players: playersRet,
                points: sum,
                faction: faction
            }
            teams.push(team);

            report = teamReports.iterateNext();
        }

        const winningFaction = teams.find((t) => t.team === winningTeam).faction;

        return { winner: `${winningTeam} - ${winningFaction}`, teams: teams, file: file.name };
    }).catch(alert);
}

const teamCols = [];
function renderStats(stats) {
    const statHead = document.getElementById("stat-head");
    const statTable = document.getElementById("stat-table");
    statTable.innerHTML = "";
    stats.forEach((stat) => {
        const tr = document.createElement("tr");
        let cell = document.createElement("td");
        cell.textContent = stat.file;
        tr.appendChild(cell);
        cell = document.createElement("td");
        cell.textContent = stat.winner;
        tr.appendChild(cell);
        stat.teams.forEach((team) => {
            if(!teamCols.includes(team.team)) {
                teamCols.push(team.team);
                let headcell = document.createElement("th");
                headcell.textContent = team.team;
                statHead.appendChild(headcell);
                headcell = document.createElement("th");
                headcell.textContent = "Points";
                statHead.appendChild(headcell);
            }
            cell = document.createElement("td");
            cell.textContent = `${team.faction} - ${team.players.join(", ")}`;
            tr.appendChild(cell);
            cell = document.createElement("td");
            cell.textContent = team.points.toString();
            tr.appendChild(cell);
        });
        statTable.appendChild(tr);
    });
}

function ui() {
    const dragTarget = document.getElementById("drag-target");
    const fileInput = document.getElementById("report-file");
    fileInput.addEventListener("change", (e) => {
        const statPromises = [];
        if (fileInput.files) {
            [...fileInput.files].forEach((file, i) => {
                if (file.name.endsWith(".xml")) {
                    statPromises.push(handleFileUpload(file));
                }
            });
        }
        Promise.all(statPromises).then((stats) => {
            renderStats(stats);
        });
    });

    dragTarget.addEventListener("drop", (e) => {
        e.preventDefault();
        dragTarget.classList.remove("dragging");
        const statPromises = [];

        if (e.dataTransfer.files) {
            [...e.dataTransfer.files].forEach((file, i) => {
                if (file.name.endsWith(".xml")) {
                    statPromises.push(handleFileUpload(file));
                }
            });
        }

        Promise.all(statPromises).then((stats) => {
            renderStats(stats);
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