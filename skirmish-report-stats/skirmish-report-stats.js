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

const englishHullNames = {
    "Stock/Shuttle": "Shuttle",
    "Stock/Tugboat": "Tugboat",
    "Stock/Bulk Feeder": "Cargo Feeder",
    "Stock/Container Hauler": "Container Lineship",
    "Stock/Bulk Hauler": "Bulk Lineship",
    "Stock/Ocello Cruiser": "Ocello",
    "Stock/Sprinter Corvette": "Sprinter",
    "Stock/Raines Frigate": "Raines",
    "Stock/Keystone Destroyer": "Keystone",
	"Stock/Vauxhall Light Cruiser": "Vauxhall",
    "Stock/Axford Heavy Cruiser": "Axford",
    "Stock/Solomon Battleship": "Solomon"
}

/*
* Players
* Who won
* Points values brought (to offset point inequality bias if that ever happens)
- Map
- Ranks of participating players and what team they were on (to offset rank bias)
*/
function handleFileUpload(file) {
    return file.text().then(handleFileContent).catch(alert).then((doc) => [file.name, doc]);
}

function isFaction(hullKeys) {
    return (doc, teamReport) => {
        const resolver = doc.createNSResolver(doc);
    
        let ships = doc.evaluate(".//HullKey", teamReport, resolver, XPathResult.UNORDERED_NODE_ITERATOR_TYPE);
        let ship = ships.iterateNext();
        while(ship) {
            if(hullKeys.includes(ship.textContent)) {
                return true;
            }
            ship = ships.iterateNext();
        }
        return false;
    };
}
const isANS = isFaction(ansHullKeys);
const isOSP = isFaction(ospHullKeys);

function statReportName(docname) {
    return docname;
}

function statWinningTeam(_, doc) {
    const resolver = doc.createNSResolver(doc);
    const winningTeam = doc.evaluate("//WinningTeam", doc, resolver, XPathResult.STRING_TYPE).stringValue;
    const teamReports = doc.evaluate("//TeamReportOfShipBattleReport", doc, resolver, XPathResult.UNORDERED_NODE_ITERATOR_TYPE);
    let report = teamReports.iterateNext();
    while(report) {
        const teamId = doc.evaluate(".//TeamID", report, resolver, XPathResult.STRING_TYPE).stringValue;
        if (teamId === winningTeam && isANS(doc, report)) {
            return "ANS";
        }
        if (teamId === winningTeam && isOSP(doc, report)) {
            return "OSP";
        }
        report = teamReports.iterateNext();
    }
    return "Unknown";
}

function statPlayers(selectFn) {
    return (_, doc) => {
        const resolver = doc.createNSResolver(doc);
        const teamReports = doc.evaluate("//TeamReportOfShipBattleReport", doc, resolver, XPathResult.UNORDERED_NODE_ITERATOR_TYPE);
        let report = teamReports.iterateNext();
        while(report) {
            if (selectFn(doc, report)) {
                const players = doc.evaluate(".//PlayerName", report, resolver, XPathResult.UNORDERED_NODE_ITERATOR_TYPE);

                const playersRet = [];

                let player = players.iterateNext();
                while(player) {
                    playersRet.push(player.textContent);

                    player = players.iterateNext();
                }

                return playersRet.join(", ");
            }
            report = teamReports.iterateNext();
        }
        return "";
    }
}

function statCombatPower(selectFn) {
    return (_, doc) => {
        const resolver = doc.createNSResolver(doc);
        const teamReports = doc.evaluate("//TeamReportOfShipBattleReport", doc, resolver, XPathResult.UNORDERED_NODE_ITERATOR_TYPE);
        let report = teamReports.iterateNext();
        while(report) {
            if (selectFn(doc, report)) {
                let points = doc.evaluate(".//OriginalPointCost", report, resolver, XPathResult.UNORDERED_NODE_ITERATOR_TYPE);
                let point = points.iterateNext();
                let sum = 0;
                while(point) {
                    sum += parseInt(point.textContent, 10);
                    point = points.iterateNext();
                }
                return sum.toLocaleString();
            }
            report = teamReports.iterateNext();
        }
        return "";
    }
}

function statCommonHull(selectFn, useLeast) {
    return (_, doc) => {
        const resolver = doc.createNSResolver(doc);
        const teamReports = doc.evaluate("//TeamReportOfShipBattleReport", doc, resolver, XPathResult.UNORDERED_NODE_ITERATOR_TYPE);
        let report = teamReports.iterateNext();
        while(report) {
            if (selectFn(doc, report)) {
                let hulls = doc.evaluate(".//HullKey", report, resolver, XPathResult.UNORDERED_NODE_ITERATOR_TYPE);
                let hull = hulls.iterateNext();
                let hullCounts = {};
                while(hull) {
                    if (hullCounts[hull.textContent] === undefined) {
                        hullCounts[hull.textContent] = 0;
                    } else {
                        hullCounts[hull.textContent] += 1;
                    }
                    hull = hulls.iterateNext();
                }
                if (useLeast) {
                    return englishHullNames[Object.entries(hullCounts).sort(([_, a], [__, b]) => a - b)[0][0]];
                } else {
                    return englishHullNames[Object.entries(hullCounts).sort(([_, a], [__, b]) => b - a)[0][0]];
                }
            }
            report = teamReports.iterateNext();
        }
        return "";
    }
}

const statCols = {
    "Report": statReportName,
    "Winning Team": statWinningTeam,
    "ANS Players": statPlayers(isANS),
    "ANS Combat Power": statCombatPower(isANS),
    "ANS Common Hull": statCommonHull(isANS),
    "ANS Rare Hull": statCommonHull(isANS, true),
    "OSP Players": statPlayers(isOSP),
    "OSP Combat Power": statCombatPower(isOSP),
    "OSP Common Hull": statCommonHull(isOSP),
    "OSP Rare Hull": statCommonHull(isOSP, true),
};

function renderRowStats(docs) {
    const statHead = document.getElementById("stat-head");
    const statTable = document.getElementById("stat-table");
    statHead.innerHTML = "";
    statTable.innerHTML = "";

    Object.keys(statCols).forEach((statName) => {
        const th = document.createElement("th");
        th.textContent = statName;
        statHead.appendChild(th);
    })
    docs.forEach(([docname, doc]) => {
        const tr = document.createElement("tr");
        for (const stat in statCols) {
            if (Object.hasOwnProperty.call(statCols, stat)) {
                const statFn = statCols[stat];
    
                const td = document.createElement("td");
                td.textContent = statFn(docname, doc);
                tr.appendChild(td);
            }
        }
        statTable.appendChild(tr);
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
            renderRowStats(docs);
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
            renderRowStats(docs);
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