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
        throw "Failed to parse fleet file";
    }
    return doc;
}

function handleFileUpload(file) {
    file.text().then(handleFileContent).catch(alert).then((xmlDoc) => {
        downloadUI(xmlDoc, file.name);
    }).catch(alert);
}

const feeder50Key = 'Stock/Bulk Feeder';
const feeder48Key = 'Stock/Bulk Feeder 48';
const feeder46Key = 'Stock/Bulk Feeder 46';

function replaceFeeders(doc, newKey, newName) {
    const resolver = doc.createNSResolver(doc);
    const feeders50 = doc.evaluate(`//Fleet/Ships/Ship/HullType[text()='${feeder50Key}']`, doc, resolver, XPathResult.UNORDERED_NODE_SNAPSHOT_TYPE);
    const feeders48 = doc.evaluate(`//Fleet/Ships/Ship/HullType[text()='${feeder48Key}']`, doc, resolver, XPathResult.UNORDERED_NODE_SNAPSHOT_TYPE);
    const feeders46 = doc.evaluate(`//Fleet/Ships/Ship/HullType[text()='${feeder46Key}']`, doc, resolver, XPathResult.UNORDERED_NODE_SNAPSHOT_TYPE);
    for(let i=0; i < feeders50.snapshotLength; i++) {
        const feeder = feeders50.snapshotItem(i);
        feeder.textContent = newKey;
    }
    for(let i=0; i < feeders48.snapshotLength; i++) {
        const feeder = feeders48.snapshotItem(i);
        feeder.textContent = newKey;
    }
    for(let i=0; i < feeders46.snapshotLength; i++) {
        const feeder = feeders46.snapshotItem(i);
        feeder.textContent = newKey;
    }

    const name = doc.evaluate("//Fleet/Name", doc, resolver, XPathResult.FIRST_ORDERED_NODE_TYPE).singleNodeValue;
    name.textContent = newName
    return doc;
}

function makeFeederDownload(text, newKey, doc, filename, newName) {
    const form = document.createElement("form");
    form.action = "#";
    const download = document.createElement("button");
    download.type = "submit";
    download.textContent = text;
    form.appendChild(download);

    form.addEventListener("submit", (e) => {
        e.preventDefault();
        e.stopPropagation();
        const replaced = replaceFeeders(doc, newKey, newName);
        const xmlstr = new XMLSerializer().serializeToString(replaced);
        const blob = new Blob([xmlstr], { type: "application/xml" });
        const url = URL.createObjectURL(blob);
        const a = document.createElement("a");
        a.style.display = 'none';
        a.href = url;
        a.download = filename;
        document.body.appendChild(a);
        a.click();
        URL.revokeObjectURL(url);
        document.body.removeChild(a);
    });

    return form;
}

function downloadUI(doc, filename) {
    const downloadTarget = document.getElementById("download-target");
    
    while (downloadTarget.firstChild) {
        downloadTarget.removeChild(downloadTarget.firstChild);
    }
    const resolver = doc.createNSResolver(doc);
    const name = doc.evaluate("//Fleet/Name", doc, resolver, XPathResult.FIRST_ORDERED_NODE_TYPE).singleNodeValue;
    const download50 = makeFeederDownload("Download 50cm Feeder Fleet", feeder50Key, doc, `50cm-${filename}`, `${name.textContent} (50cm)`);
    const download48 = makeFeederDownload("Download 48cm Feeder Fleet", feeder48Key, doc, `48cm-${filename}`, `${name.textContent} (48cm)`);
    const download46 = makeFeederDownload("Download 46cm Feeder Fleet", feeder46Key, doc, `46cm-${filename}`, `${name.textContent} (46cm)`);

    downloadTarget.appendChild(download50);
    downloadTarget.appendChild(download48);
    downloadTarget.appendChild(download46);
}

function ui() {
    const dragTarget = document.getElementById("drag-target");
    const fileInput = document.getElementById("fleet-file");
    fileInput.addEventListener("change", (e) => {
        if (fileInput.files) {
            if(fileInput.files.length > 1) {
                alert("Only 1 file at a time!");
                return;
            }
            [...fileInput.files].forEach((file, i) => {
                if (file.name.endsWith(".fleet")) {
                    handleFileUpload(file);
                }
            });
        }
    });

    dragTarget.addEventListener("drop", (e) => {
        e.preventDefault();
        dragTarget.classList.remove("dragging");

        if (e.dataTransfer.files) {
            if(e.dataTransfer.files.length > 1) {
                alert("Only 1 file at a time!");
                return;
            }
            [...e.dataTransfer.files].forEach((file, i) => {
                console.log(file.type);
                if (file.name.endsWith(".fleet")) {
                    handleFileUpload(file);
                }
            });
        }
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