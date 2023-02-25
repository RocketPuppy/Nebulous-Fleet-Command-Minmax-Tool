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

Aggregate Stats
Across all Wins
- Median hull counts
- Median weapon counts
- Median radar counts
Across all losses
- Median hull counts
- Median weapon counts
- Median radar counts
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

function getFactionFromReport(doc, report) {
    if (isANS(doc, report)) {
        return "ANS";
    }
    if (isOSP(doc, report)) {
        return "OSP";
    }
    return "Unknown";
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

function statBroughtHulls(selectFn) {
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
                        hullCounts[hull.textContent] = 1;
                    } else {
                        hullCounts[hull.textContent] += 1;
                    }
                    hull = hulls.iterateNext();
                }
                return [...ansHullKeys, ...ospHullKeys].flatMap((hull) => {
                    if (hullCounts[hull] !== undefined) {
                        return [`${englishHullNames[hull]}: ${hullCounts[hull]}`];
                    }
                    return [];
                }).join(", ");
            }
            report = teamReports.iterateNext();
        }
        return "";
    }
}

function statMissingHulls(selectFn, hullList) {
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
                let missing = [];
                hullList.forEach((hull) => {
                    if (hullCounts[hull] === undefined) {
                        missing.push(hull);
                    }
                });
                return [...ansHullKeys, ...ospHullKeys].flatMap((hull) => {
                    if (missing.includes(hull)) {
                        return [englishHullNames[hull]];
                    }
                    return [];
                }).join(", ");
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
    "ANS Brought Hulls": statBroughtHulls(isANS),
    "ANS Missing Hulls": statMissingHulls(isANS, ansHullKeys),
    "OSP Players": statPlayers(isOSP),
    "OSP Combat Power": statCombatPower(isOSP),
    "OSP Common Hull": statCommonHull(isOSP),
    "OSP Rare Hull": statCommonHull(isOSP, true),
    "OSP Brought Hulls": statBroughtHulls(isOSP),
    "OSP Missing Hulls": statMissingHulls(isOSP, ospHullKeys),
};

function renderRowStats(docs) {
    const statHead = document.querySelector("#stats .stat-head");
    const statTable = document.querySelector("#stats .stat-table");
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

const aggStatCols = {
    "ANS Wins": [isANS, true, ansHullKeys],
    "ANS Losses": [isANS, false, ansHullKeys],
    "OSP Wins": [isOSP, true, ospHullKeys],
    "OSP Losses": [isOSP, false, ospHullKeys],
};

const aggStatRows = {
    "Total": aggTotals,
    "Median Hull Counts": aggHulls(median),
    "Average Hull Counts": aggHulls(average),
    "Max Hull Counts": aggHulls(max),
    "Min Hull Counts": aggHulls(min),
    // "Median Weapon Counts": aggMedianWeps,
    // "Median Radar Counts": aggMedianRadars
};

function renderAggStats(docs) {
    const statHead = document.querySelector("#agg-stats .stat-head");
    const statTable = document.querySelector("#agg-stats .stat-table");
    statHead.innerHTML = "";
    statTable.innerHTML = "";

    const blankTh = document.createElement("th");
    statHead.appendChild(blankTh);

    Object.keys(aggStatCols).forEach((statName) => {
        const th = document.createElement("th");
        th.textContent = statName;
        statHead.appendChild(th);
    })
    Object.entries(aggStatRows).forEach(([rowName, statFn]) => {
        const tr = document.createElement("tr");
        const rowCell = document.createElement("td");
        rowCell.textContent = rowName;
        tr.appendChild(rowCell);
        Object.entries(aggStatCols).forEach(([_, statArgs]) => {
            const td = document.createElement("td");
            td.textContent = statFn(...statArgs)(docs);
            tr.appendChild(td);
        });
        statTable.appendChild(tr);
    });
}

function median(nums) {
    if (nums.length === 0) {
        return ["N/A"];
    }
    const sorted = nums.sort((a, b) => a - b);
    const length = nums.length;
    const halfLength = Math.floor(length/2);
    if (length % 2 === 0) {
        //even
        return [sorted[halfLength - 2], sorted[halfLength]];
    } else {
        //odd
        return [sorted[halfLength]];
    }
}

function average(nums) {
    if (nums.length === 0) {
        return ["N/A"];
    }
    const sum = nums.reduce((a, b) => a + b, 0);
    const length = nums.length;
    return [(sum/length).toFixed(1)];
}

function max(nums) {
    if (nums.length === 0) {
        return ["N/A"];
    }
    return [Math.max(...nums)];
}

function min(nums) {
    if (nums.length === 0) {
        return ["N/A"];
    }
    return [Math.min(...nums)];
}

function aggTotals(factionSelector, useWins, _) {
    return (docs) => {
        let total = 0;
        docs.forEach(([_, doc]) => {
            const resolver = doc.createNSResolver(doc);
            const teamReports = doc.evaluate("//TeamReportOfShipBattleReport", doc, resolver, XPathResult.UNORDERED_NODE_ITERATOR_TYPE);
            let report = teamReports.iterateNext();
            while(report) {
                const didWin = getFactionFromReport(doc, report) === statWinningTeam(null, doc);
                if (factionSelector(doc, report) && ((useWins && didWin) || (!useWins && !didWin))) {
                    total += 1;
                }
                report = teamReports.iterateNext();
            }
        });
        return total.toLocaleString();
    };
}

function aggHulls(aggFn) {
    return (factionSelector, useWins, hullList) => {
        return (docs) => {
            const hullCounts = {}; // hull name => array of counts
            docs.forEach(([_, doc]) => {
                const resolver = doc.createNSResolver(doc);
                const teamReports = doc.evaluate("//TeamReportOfShipBattleReport", doc, resolver, XPathResult.UNORDERED_NODE_ITERATOR_TYPE);
                let report = teamReports.iterateNext();
                while(report) {
                    const didWin = getFactionFromReport(doc, report) === statWinningTeam(null, doc);
                    if (factionSelector(doc, report) && ((useWins && didWin) || (!useWins && !didWin))) {
                        let hulls = doc.evaluate(".//HullKey", report, resolver, XPathResult.UNORDERED_NODE_ITERATOR_TYPE);
                        let hull = hulls.iterateNext();
                        const singleHullCounts = {};
                        while(hull) {
                            if (singleHullCounts[hull.textContent] === undefined) {
                                singleHullCounts[hull.textContent] = 1;
                            } else {
                                singleHullCounts[hull.textContent] += 1;
                            }
                            hull = hulls.iterateNext();
                        }
                        hullList.forEach((hull) => {
                            if (singleHullCounts[hull] === undefined) {
                                singleHullCounts[hull] = 0;
                            }
                        });
                        Object.entries(singleHullCounts).forEach(([hull, count]) => {
                            if(hullCounts[hull] === undefined) {
                                hullCounts[hull] = [count];
                            } else {
                                hullCounts[hull].push(count);
                            }
                        });
                    }
                    report = teamReports.iterateNext();
                }
            });
            return hullList.map((hull) => {
                return `${englishHullNames[hull]}: ${aggFn(hullCounts[hull] || []).join(", ")}`;
            }).join("; ");
        };
    };
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
            renderAggStats(docs);
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
            renderAggStats(docs);
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