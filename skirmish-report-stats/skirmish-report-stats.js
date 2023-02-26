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

const englishWepNames = {
    "E55 'Spotlight' Illuminator": "Spotlight",
    "E57 'Floodlight' Illuminator": "Floodlight",
    "E70 'Interruption' Jammer": "Interruption",
    "E71 'Hangup' Jammer": "Hangup",
    "E90 'Blanket' Jammer": "Blanket",
    "Mk550 Mass Driver - 300mm AP Rail Sabot": "Railgun",
    "Mk600 Beam Cannon": "Beam",
    "Mk61 Cannon - 120mm AP Shell": "120 AP",
    "Mk61 Cannon - 120mm HE Shell": "120 HE",
    "Mk61 Cannon - 120mm HE-RPF Shell": "120 RPF",
    "Mk610 Beam Turret": "Beam",
    "Mk62 Cannon - 120mm AP Shell": "120 AP",
    "Mk62 Cannon - 120mm HE Shell": "120 HE",
    "Mk62 Cannon - 120mm HE-RPF Shell": "120 RPF",
    "Mk64 Cannon - 250mm AP Shell": "250 AP",
    "Mk64 Cannon - 250mm HE Shell": "250 HE",
    "Mk64 Cannon - 250mm HE-RPF Shell": "250 RPF",
    "Mk65 Cannon - 250mm AP Shell": "250 AP",
    "Mk65 Cannon - 250mm HE Shell": "250 HE",
    "Mk65 Cannon - 250mm HE-RPF Shell": "250 RPF",
    "Mk66 Cannon - 450mm AP Shell": "450 AP",
    "Mk66 Cannon - 450mm HE Shell": "450 HE",
    "Mk68 Cannon - 450mm AP Shell": "450 AP",
    "Mk68 Cannon - 450mm HE Shell": "450 HE",
    "Mk81 Railgun - 300mm AP Rail Sabot": "Railgun",

    "C30 Cannon - 100mm AP Shell": "100 AP",
    "C30 Cannon - 100mm Grapeshot": "100 Grapeshot",
    "C30 Cannon - 100mm HE Shell": "100 HE",
    "C30 Cannon - 100mm HE-HC Shell": "100 HEHC",
    "C53 Cannon - 250mm AP Shell": "250 AP",
    "C53 Cannon - 250mm HE Shell": "250 HE",
    "C60 Cannon - 450mm AP Shell": "450 AP",
    "C60 Cannon - 450mm HE Shell": "450 HE",
    "C65 Cannon - 450mm AP Shell": "450 AP",
    "C65 Cannon - 450mm HE Shell": "450 HE",
    "C81 Plasma Cannon - 400mm Plasma Ampoule": "Plasma",
    "E20 'Lighthouse' Illuminator": "Lighthouse",
    "J15 Jammer": "OSP Blanket",
    "J360 Jammer": "Omni-Blanket",
    "L50 Laser Dazzler": "Dazzler",
    "T20 Cannon - 100mm AP Shell": "100 AP",
    "T20 Cannon - 100mm Grapeshot": "100 Grapeshot",
    "T20 Cannon - 100mm HE Shell": "100 HE",
    "T20 Cannon - 100mm HE-HC Shell": "100 HEHC",
    "T30 Cannon - 100mm AP Shell": "100 AP",
    "T30 Cannon - 100mm Grapeshot": "100 Grapeshot",
    "T30 Cannon - 100mm HE Shell": "100 HE",
    "T30 Cannon - 100mm HE-HC Shell": "100 HEHC",
    "T81 Plasma Cannon - 400mm Plasma Ampoule": "Plasma",
    "TE45 Mass Driver - 500mm Fracturing Block": "Mass Driver",
    "Stock/SGM-1 Body": "S1 Balestra",
    "Stock/SGM-2 Body": "S2 Tempest",
    "Stock/SGM-H-2 Body": "S2H Cyclone",
    "Stock/SGM-H-3 Body": "S3H Atlatl",
    "Stock/SGT-3 Body": "S3 Pilum",
    "Stock/S1 Rocket": "Rocket",
    "Stock/S3 Sprint Mine": "Sprint Mine",
    "Stock/Decoy Container (Clipper)": "Clipper Decoy",
    "Stock/S3 Net Mine": "Net Mine",
    "Stock/CM-4 Body": "Container Missile",
    "Stock/Decoy Container (Line Ship)": "Line Ship Decoy",
    "Stock/Mine Container": "Mine Container",
    "Stock/S3 Mine": "Mine"
};

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

                return playersRet;
            }
            report = teamReports.iterateNext();
        }
        return [];
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
                const memo = {};
                [...ansHullKeys, ...ospHullKeys].forEach((hull) => {
                    if (hullCounts[hull] !== undefined) {
                        memo[englishHullNames[hull]] = hullCounts[hull];
                    }
                });
                return memo;
            }
            report = teamReports.iterateNext();
        }
        return {};
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
                        hullCounts[hull.textContent] = 1;
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
                });
            }
            report = teamReports.iterateNext();
        }
        return [];
    }
}

function statWeaponCounts(selectFn) {
    return (_, doc) => {
        const resolver = doc.createNSResolver(doc);
        const teamReports = doc.evaluate("//TeamReportOfShipBattleReport", doc, resolver, XPathResult.UNORDERED_NODE_ITERATOR_TYPE);
        let report = teamReports.iterateNext();
        while(report) {
            if (selectFn(doc, report)) {
                let weps = doc.evaluate(".//WeaponReport", report, resolver, XPathResult.UNORDERED_NODE_ITERATOR_TYPE);
                let wep = weps.iterateNext();
                let wepCounts = {};
                while(wep) {
                    let wepName = doc.evaluate(".//Name", wep, resolver, XPathResult.STRING_TYPE).stringValue;
                    if (wepCounts[wepName] === undefined) {
                        wepCounts[wepName] = 1;
                    } else {
                        wepCounts[wepName] += 1;
                    }
                    wep = weps.iterateNext();
                }
                let missiles = doc.evaluate(".//OffensiveMissileReport", report, resolver, XPathResult.UNORDERED_NODE_ITERATOR_TYPE);
                let missile = missiles.iterateNext();
                while(missile) {
                    let missileType = englishWepNames[doc.evaluate(".//MissileKey", missile, resolver, XPathResult.STRING_TYPE).stringValue];
                    let missileCount = doc.evaluate(".//TotalCarried", missile, resolver, XPathResult.NUMBER_TYPE).numberValue;
                    if (wepCounts[missileType] === undefined) {
                        wepCounts[missileType] = missileCount;
                    } else {
                        wepCounts[missileType] += missileCount;
                    }
                    missile = missiles.iterateNext();
                }
                return wepCounts;
            }
            report = teamReports.iterateNext();
        }
        return {};
    };
}

function renderHtmlString(string) {
    return string;
}

function renderCsvString(string) {
    return string;
}

function renderHtmlArray(arr) {
    return arr.join(", ");
}

function renderCsvArray(arr) {
    return arr.join(";");
}

function renderHtmlObj(doSort) {
    return (obj) => {
        let keys = Object.keys(obj);
        if (doSort) {
            keys = keys.sort();
        }
        return keys.map((k) => {
            let v = obj[k];
            if (v instanceof Number) {
                v = v.toLocaleString();
            }
            if (v instanceof Array) {
                v = renderHtmlArray(v);
            }
            return `${k}: ${v}`;
        }).join("<br/>");
    };
}

function renderCsvObj(doSort) {
    return (obj) => {
        let keys = Object.keys(obj);
        if (doSort) {
            keys = keys.sort();
        }
        return keys.map((k) => {
            let v = obj[k];
            return `${k}: ${v}`;
        }).join(";");
    };
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
    "ANS Hulls With Weapon": statWeaponCounts(isANS),
    "OSP Players": statPlayers(isOSP),
    "OSP Combat Power": statCombatPower(isOSP),
    "OSP Common Hull": statCommonHull(isOSP),
    "OSP Rare Hull": statCommonHull(isOSP, true),
    "OSP Brought Hulls": statBroughtHulls(isOSP),
    "OSP Missing Hulls": statMissingHulls(isOSP, ospHullKeys),
    "OSP Hulls With Weapon": statWeaponCounts(isOSP),
};

const htmlRenders = {
    "Report": renderHtmlString,
    "Winning Team": renderHtmlString,
    "ANS Players": renderHtmlArray,
    "ANS Combat Power": renderHtmlString,
    "ANS Common Hull": renderHtmlString,
    "ANS Rare Hull": renderHtmlString,
    "ANS Brought Hulls": renderHtmlObj(false),
    "ANS Missing Hulls": renderHtmlArray,
    "ANS Hulls With Weapon": renderHtmlObj(true),
    "OSP Players": renderHtmlArray,
    "OSP Combat Power": renderHtmlString,
    "OSP Common Hull": renderHtmlString,
    "OSP Rare Hull": renderHtmlString,
    "OSP Brought Hulls": renderHtmlObj(false),
    "OSP Missing Hulls": renderHtmlArray,
    "OSP Hulls With Weapon": renderHtmlObj(true),
};

const csvRenders = {
    "Report": renderCsvString,
    "Winning Team": renderCsvString,
    "ANS Players": renderCsvArray,
    "ANS Combat Power": renderCsvString,
    "ANS Common Hull": renderCsvString,
    "ANS Rare Hull": renderCsvString,
    "ANS Brought Hulls": renderCsvObj(false),
    "ANS Missing Hulls": renderCsvArray,
    "ANS Hulls With Weapon": renderCsvObj(true),
    "OSP Players": renderCsvArray,
    "OSP Combat Power": renderCsvString,
    "OSP Common Hull": renderCsvString,
    "OSP Rare Hull": renderCsvString,
    "OSP Brought Hulls": renderCsvObj(false),
    "OSP Missing Hulls": renderCsvArray,
    "OSP Hulls With Weapon": renderCsvObj(true),
};

function collectRowStats(docs) {
    const ret = {};
    docs.forEach(([docname, doc]) => {
        ret[docname] = {};
        for (const stat in statCols) {
            if (Object.hasOwnProperty.call(statCols, stat)) {
                const statFn = statCols[stat];
                ret[docname][stat] = statFn(docname, doc);
            }
        }
    });
    return ret;
}

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
    const stats = collectRowStats(docs);
    for (const docname in stats) {
        if (Object.hasOwnProperty.call(stats, docname)) {
            const tr = document.createElement("tr");
            const statRow = stats[docname];
            for (const statName in statRow) {
                if (Object.hasOwnProperty.call(statRow, statName)) {
                    const statValue = statRow[statName];
                    const td = document.createElement("td");
                    td.innerHTML = htmlRenders[statName](statValue);
                    tr.appendChild(td);
                }
            }
            statTable.appendChild(tr);
        }
    }
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
    "Median Hulls With Weapon": aggHullsWithWeps(median),
    "Average Hulls With Weapon": aggHullsWithWeps(average),
    "Max Hulls With Weapon": aggHullsWithWeps(max),
    "Min Hulls With Weapon": aggHullsWithWeps(min),
    "Median Missile Totals": aggMissiles(median),
    "Average Missile Totals": aggMissiles(average),
    "Max Missile Totals": aggMissiles(max),
    "Min Missile Totals": aggMissiles(min),
};

const htmlAggRenders = {
    "Total": renderHtmlString,
    "Median Hull Counts": renderHtmlObj(false),
    "Average Hull Counts": renderHtmlObj(false),
    "Max Hull Counts": renderHtmlObj(false),
    "Min Hull Counts": renderHtmlObj(false),
    "Median Hulls With Weapon": renderHtmlObj(true),
    "Average Hulls With Weapon": renderHtmlObj(true),
    "Max Hulls With Weapon": renderHtmlObj(true),
    "Min Hulls With Weapon": renderHtmlObj(true),
    "Median Missile Totals": renderHtmlObj(true),
    "Average Missile Totals": renderHtmlObj(true),
    "Max Missile Totals": renderHtmlObj(true),
    "Min Missile Totals": renderHtmlObj(true),
};

const csvAggRenders = {
    "Total": renderCsvString,
    "Median Hull Counts": renderCsvObj(false),
    "Average Hull Counts": renderCsvObj(false),
    "Max Hull Counts": renderCsvObj(false),
    "Min Hull Counts": renderCsvObj(false),
    "Median Hulls With Weapon": renderCsvObj(true),
    "Average Hulls With Weapon": renderCsvObj(true),
    "Max Hulls With Weapon": renderCsvObj(true),
    "Min Hulls With Weapon": renderCsvObj(true),
    "Median Missile Totals": renderCsvObj(true),
    "Average Missile Totals": renderCsvObj(true),
    "Max Missile Totals": renderCsvObj(true),
    "Min Missile Totals": renderCsvObj(true),
};

function collectAggStats(docs) {
    let ret = {};
    Object.keys(aggStatRows).map((rowName) => {
        const statFn = aggStatRows[rowName];
        ret[rowName] = {};
        Object.keys(aggStatCols).map((colName) => {
            const statArgs = aggStatCols[colName];
            ret[rowName][colName] = statFn(...statArgs)(docs);
        });
    });
    return ret;
}

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
    const stats = collectAggStats(docs);
    Object.keys(stats).forEach((statName) => {
        const tr = document.createElement("tr");
        const rowCell = document.createElement("td");
        rowCell.textContent = statName;
        tr.appendChild(rowCell);
        const colVals = stats[statName];
        Object.keys(colVals).forEach((colName) => {
            const colVal = colVals[colName];
            const td = document.createElement("td");
            td.innerHTML = htmlAggRenders[statName](colVal);
            tr.appendChild(td);
        });
        statTable.appendChild(tr);
    });
}

function median(nums) {
    if (nums.length === 0) {
        return ["N/A"];
    }
    if (nums.length === 2) {
        return nums.sort((a, b) => a - b);
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
            const ret = {};
            hullList.forEach((hull) => {
                ret[englishHullNames[hull]] = aggFn(hullCounts[hull] || []);
            });
            return ret;
        };
    };
}

function aggHullsWithWeps(aggFn) {
    return (factionSelector, useWins, _) => {
        return (docs) => {
            const wepCounts = {}; // wep name => array of counts
            docs.forEach(([_, doc]) => {
                const resolver = doc.createNSResolver(doc);
                const teamReports = doc.evaluate("//TeamReportOfShipBattleReport", doc, resolver, XPathResult.UNORDERED_NODE_ITERATOR_TYPE);
                let report = teamReports.iterateNext();
                while(report) {
                    const didWin = getFactionFromReport(doc, report) === statWinningTeam(null, doc);
                    if (factionSelector(doc, report) && ((useWins && didWin) || (!useWins && !didWin))) {
                        let weps = doc.evaluate(".//WeaponReport", report, resolver, XPathResult.UNORDERED_NODE_ITERATOR_TYPE);
                        let wep = weps.iterateNext();
                        let singleWepCounts = {};
                        while(wep) {
                            let wepName = englishWepNames[doc.evaluate(".//Name", wep, resolver, XPathResult.STRING_TYPE).stringValue];
                            if (wepName === undefined) {
                                wepName = doc.evaluate(".//Name", wep, resolver, XPathResult.STRING_TYPE).stringValue;
                            }
                            if (singleWepCounts[wepName] === undefined) {
                                singleWepCounts[wepName] = 1;
                            } else {
                                singleWepCounts[wepName] += 1;
                            }
                            wep = weps.iterateNext();
                        }
                        
                        Object.entries(singleWepCounts).forEach(([wep, count]) => {
                            if(wepCounts[wep] === undefined) {
                                wepCounts[wep] = [count];
                            } else {
                                wepCounts[wep].push(count);
                            }
                        });
                    }
                    report = teamReports.iterateNext();
                }
            });
            const ret = {};
            Object.keys(wepCounts).sort().forEach((wepName) => {
                ret[wepName] = aggFn(wepCounts[wepName] || []);
            });
            return ret;
        };
    };
}

function aggMissiles(aggFn) {
    return (factionSelector, useWins, _) => {
        return (docs) => {
            const wepCounts = {}; // wep name => array of counts
            docs.forEach(([_, doc]) => {
                const resolver = doc.createNSResolver(doc);
                const teamReports = doc.evaluate("//TeamReportOfShipBattleReport", doc, resolver, XPathResult.UNORDERED_NODE_ITERATOR_TYPE);
                let report = teamReports.iterateNext();
                while(report) {
                    const didWin = getFactionFromReport(doc, report) === statWinningTeam(null, doc);
                    if (factionSelector(doc, report) && ((useWins && didWin) || (!useWins && !didWin))) {
                        let weps = doc.evaluate(".//OffensiveMissileReport", report, resolver, XPathResult.UNORDERED_NODE_ITERATOR_TYPE);
                        let wep = weps.iterateNext();
                        let singleWepCounts = {};
                        while(wep) {
                            let wepName = englishWepNames[doc.evaluate(".//MissileKey", wep, resolver, XPathResult.STRING_TYPE).stringValue];
                            let wepCount = doc.evaluate(".//TotalCarried", wep, resolver, XPathResult.NUMBER_TYPE).numberValue;
                            if (wepName === undefined) {
                                wepName = doc.evaluate(".//MissileKey", wep, resolver, XPathResult.STRING_TYPE).stringValue;
                            }
                            if (singleWepCounts[wepName] === undefined) {
                                singleWepCounts[wepName] = wepCount;
                            } else {
                                singleWepCounts[wepName] += wepCount;
                            }
                            wep = weps.iterateNext();
                        }
                        
                        Object.entries(singleWepCounts).forEach(([wep, count]) => {
                            if(wepCounts[wep] === undefined) {
                                wepCounts[wep] = [count];
                            } else {
                                wepCounts[wep].push(count);
                            }
                        });
                    }
                    report = teamReports.iterateNext();
                }
            });
            const ret = {};
            Object.keys(wepCounts).sort().forEach((wepName) => {
                ret[wepName] = aggFn(wepCounts[wepName] || []);
            });
            return ret;
        };
    };
}

function renderStatsCsv(stats) {
    return Object.values(stats).map((statRow) => {
        return Object.keys(statRow).map((statName) => {
            const stat = statRow[statName];
            return csvRenders[statName](stat);
        }).join("\t");
    });
}

function renderAggsCsv(stats) {
    return Object.keys(aggStatCols).map((rowName) => {
        return [rowName, ...Object.keys(stats).map((colName) => {
            const statRows = stats[colName];
            return csvAggRenders[colName](statRows[rowName]);
        })].join("\t");
    });
}

function aggCsvHeaders(stats) {
    return ["Report", ...Object.keys(stats)];
}

function statsCsvHeaders(stats) {
    return Object.keys(Object.values(stats)[0]);
}

function downloadCsv(statCollector, statRenderer, headerFn, filename, docs) {
    const separator = "\t";
    const stats = statCollector(docs);
    const csvHeader = headerFn(stats).map(JSON.stringify).join(separator);

    const csvRows = statRenderer(stats);

    const csv = [csvHeader, ...csvRows].join("\n");

    const blob = new Blob([csv], { type: "text/csv" });
    const url = URL.createObjectURL(blob);
    const a = document.createElement("a");
    a.style.display = 'none';
    a.href = url;
    a.download = filename;
    document.body.appendChild(a);
    a.click();
    URL.revokeObjectURL(url);
    document.body.removeChild(a);
}

function renderDownloaders(docs) {
    const aggDownload = document.getElementById("agg-csv-download");
    const statsDownload = document.getElementById("stats-csv-download");
    aggDownload.classList.remove("hidden");
    aggDownload.disabled = false;
    statsDownload.classList.remove("hidden");
    statsDownload.disabled = false;

    aggDownload.onclick = (e) => {
        e.preventDefault();
        e.stopPropagation();

        downloadCsv(collectAggStats, renderAggsCsv, aggCsvHeaders, "agg-stats.csv", docs);
    };
    statsDownload.onclick = (e) => {
        e.preventDefault();
        e.stopPropagation();

        downloadCsv(collectRowStats, renderStatsCsv, statsCsvHeaders, "row-stats.csv", docs);
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
            renderDownloaders(docs);
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
            renderDownloaders(docs);
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