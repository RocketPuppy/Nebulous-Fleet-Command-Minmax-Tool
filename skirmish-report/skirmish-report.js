const xsltProcessor = new XSLTProcessor();
const skirmishFrame = document.getElementById("report-frame");

document.addEventListener("DOMContentLoaded", () => {
    // Load the xsl file using synchronous (third param is set to false) XMLHttpRequest
    const myXMLHTTPRequest = new XMLHttpRequest();
    myXMLHTTPRequest.open("GET", "skirmish-report.xsl", false);
    myXMLHTTPRequest.send(null);

    const xslRef = myXMLHTTPRequest.responseXML;
    xsltProcessor.importStylesheet(xslRef);
    document.getElementById("report-file").disabled = false;

    ui();
})

function handleFileContent(content) {
    const parser = new DOMParser();
    const doc = parser.parseFromString(content, "text/xml");
    const errorNode = doc.querySelector('parsererror');
    if (errorNode) {
        throw "Failed to parse missile file";
    }
    return doc;
}

function parseSeconds(el) {
    const duration = parseInt(el.textContent, 10);
    const minutes = Math.floor(duration / 60);
    let seconds = duration % 60;
    seconds = `0${seconds}`.slice(-2);
    const newDuration = `${minutes}:${seconds}`;
    el.textContent = newDuration
}

function parseSecondsMultiple(nodeSnapshot) {
    for (let i = 0; i < nodeSnapshot.snapshotLength; i++) {
        const el = nodeSnapshot.snapshotItem(i);
        parseSeconds(el);
    }
}

function handleFileUpload(file) {
    file.text().then(handleFileContent).catch(alert).then((xmlDoc) => {
        const resolver = xmlDoc.createNSResolver(xmlDoc);
        parseSeconds(xmlDoc.evaluate("//GameDuration", xmlDoc, resolver, XPathResult.FIRST_ORDERED_NODE_TYPE).singleNodeValue);
        parseSecondsMultiple(xmlDoc.evaluate("//EliminatedTimestamp", xmlDoc, resolver, XPathResult.UNORDERED_NODE_SNAPSHOT_TYPE));
        parseSecondsMultiple(xmlDoc.evaluate("//WasDefangedTimestamp", xmlDoc, resolver, XPathResult.UNORDERED_NODE_SNAPSHOT_TYPE));
        const fragment = xsltProcessor.transformToFragment(xmlDoc, document);
        skirmishFrame.textContent = '';
        skirmishFrame.appendChild(fragment);
    }).catch(alert);
}

function ui() {
    const dragTarget = document.getElementById("drag-target");
    const fileInput = document.getElementById("report-file");
    fileInput.addEventListener("change", (e) => {
        if (fileInput.files) {
            if(fileInput.files.length > 1) {
                alert("Only 1 file at a time!");
                return;
            }
            [...fileInput.files].forEach((file, i) => {
                if (file.name.endsWith(".xml")) {
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
                if (file.name.endsWith(".xml")) {
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