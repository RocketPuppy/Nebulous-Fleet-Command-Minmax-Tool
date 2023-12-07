const xsltProcessor = new XSLTProcessor();
const skirmishFrame = document.getElementById("report-frame");
const skirmish_schema = "./../skirmish-report.xsl";


document.addEventListener("DOMContentLoaded", () => {
  // Load the xsl file using synchronous (third param is set to false) XMLHttpRequest
  const myXMLHTTPRequest = new XMLHttpRequest();
  myXMLHTTPRequest.open("GET", skirmish_schema, false);
  myXMLHTTPRequest.send(null);

  const xslRef = myXMLHTTPRequest.responseXML;
  xsltProcessor.importStylesheet(xslRef);
  document.getElementById("report-file").disabled = false;

  ui();
})

function handleFileContent(content) {
  const parser = new DOMParser();
  const xmlDoc = parser.parseFromString(content, "text/xml");
  const errorNode = xmlDoc.querySelector('parsererror');
  if (errorNode || !xmlDoc) {
    throw "Failed to parse battle report file.";
  }
  return xmlDoc;
}

function handleFileUpload(file) {
  file.text().then(handleFileContent).catch(alert).then((xmlDoc) => {
    const fragment = xsltProcessor.transformToFragment(xmlDoc, document);
    if (!fragment) {
      console.debug('xmlDoc:', xmlDoc);
      throw "Failed to parse battle report file.";
    }
    skirmishFrame.textContent = '';
    skirmishFrame.appendChild(fragment);
    reportUi(fragment);
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

function reportUi() {
  const ships = document.querySelectorAll(".ship:not(.details)");

  ships.forEach((ship) => {
    ship.addEventListener("click", (e) => {
      ships.forEach((s) => s.classList.remove("selected"));
      ship.classList.add("selected");

      const details = document.querySelectorAll(".ship.details");
      details.forEach((d) => {
        if (d.dataset.shipId === ship.dataset.shipId) {
          d.classList.remove("hidden");
        } else {
          d.classList.add("hidden");
        }
      });

    });
  });

  ships.item(0).dispatchEvent(new Event("click"));
}
