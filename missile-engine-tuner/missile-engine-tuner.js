import { missilesByBodyKey } from "../missile-stats.js";

function handleFileContent(content) {
  const parser = new DOMParser();
  const doc = parser.parseFromString(content, "text/xml");
  const errorNode = doc.querySelector('parsererror');
  if (errorNode) {
    throw "Failed to parse missile file";
  }
  return doc;
}

function makeMissileForm() {
  const form = document.createElement("form");
  form.classList.add("missile");
  form.action = "#";
  return form;
}

function makeMissileHeader(name) {
  const h2 = document.createElement("h2");
  h2.textContent = name;
  return h2;
}

function makeMissileDownload() {
  const download = document.createElement("button");
  download.type = "submit";
  download.textContent = "Download Missile";
  return download;
}

function makeMissileRemove() {
  const remove = document.createElement("button");
  remove.type = "button";
  remove.textContent = "Remove Missile";
  return remove;
}

function makeEngineDiv() {
  const div = document.createElement("div");
  div.classList.add("engine");
  div.classList.add("inputs-form");
  return div;
}

function makeEngineHeader(name) {
  const h3 = document.createElement("h3");
  h3.textContent = name;
  return h3;
}

function linkSlider(input, slider) {
  input.addEventListener("input", (e) => {
    slider.value = input.value;
  });
  input.addEventListener("change", (e) => {
    slider.value = input.value;
  });
  slider.addEventListener("input", (e) => {
    input.value = slider.value;
  });
  slider.addEventListener("change", (e) => {
    input.value = slider.value;
  });
  if (input.value !== null && input.value !== undefined && input.value !== "") {
    slider.value = input.value;
  }
  if (slider.value !== null && slider.value !== undefined && slider.value !== "") {
    input.value = slider.value;
  }
}

function makeEngineFields(missile, speedEl, burnEl, maneuverEl, sizeEl, warheadSizeEl, valueCB) {
  const speed = parseFloat(speedEl.textContent);
  const burn = parseFloat(burnEl.textContent);
  const maneuver = parseFloat(maneuverEl.textContent);
  const currentSize = parseInt(sizeEl.textContent, 10);

  const speedF = document.createElement("fieldset");
  speedF.classList.add("control-group");
  const speedL = document.createElement("legend");
  speedL.textContent = "Top Speed";
  const speedI = document.createElement("input");
  speedI.type = "number";
  speedI.name = "speed";
  speedI.max = 1;
  speedI.min = 0;
  speedI.step = 0.00001;
  speedI.value = speed;
  const speedR = document.createElement("input");
  speedR.type = "range";
  speedR.max = 1;
  speedR.min = 0;
  speedR.step = 0.00001;
  speedR.value = speed;
  const speedHoldL = document.createElement("label");
  speedHoldL.textContent = "Hold Speed";
  const speedHoldI = document.createElement("input");
  speedHoldI.type = "checkbox";
  speedHoldI.checked = false;
  speedHoldL.appendChild(speedHoldI);
  linkSlider(speedI, speedR);
  speedF.appendChild(speedL);
  speedF.appendChild(speedI);
  speedF.appendChild(speedR);
  speedF.appendChild(speedHoldL);
  speedHoldI.addEventListener("change", (e) => {
    speedR.disabled = speedHoldI.checked;
    speedI.disabled = speedHoldI.checked;
    maneuverHoldI.disabled = speedHoldI.checked;
    burnHoldI.disabled = speedHoldI.checked;
  });

  const burnF = document.createElement("fieldset");
  burnF.classList.add("control-group");
  const burnL = document.createElement("legend");
  burnL.textContent = "Burn Duration";
  const burnI = document.createElement("input");
  burnI.type = "number";
  burnI.name = "burn";
  burnI.max = 1;
  burnI.min = 0;
  burnI.step = 0.00001;
  burnI.value = burn;
  const burnR = document.createElement("input");
  burnR.type = "range";
  burnR.max = 1;
  burnR.min = 0;
  burnR.step = 0.00001;
  burnR.value = burn;
  const burnHoldL = document.createElement("label");
  burnHoldL.textContent = "Hold burn";
  const burnHoldI = document.createElement("input");
  burnHoldI.type = "checkbox";
  burnHoldI.checked = false;
  burnHoldL.appendChild(burnHoldI);
  linkSlider(burnI, burnR);
  burnF.appendChild(burnL);
  burnF.appendChild(burnI);
  burnF.appendChild(burnR);
  burnF.appendChild(burnHoldL);
  burnHoldI.addEventListener("change", (e) => {
    burnR.disabled = burnHoldI.checked;
    burnI.disabled = burnHoldI.checked;
    speedHoldI.disabled = burnHoldI.checked;
    maneuverHoldI.disabled = burnHoldI.checked;
  });

  const maneuverF = document.createElement("fieldset");
  maneuverF.classList.add("control-group");
  const maneuverL = document.createElement("legend");
  maneuverL.textContent = "Maneuverability";
  const maneuverI = document.createElement("input");
  maneuverI.type = "number";
  maneuverI.name = "maneuver";
  maneuverI.max = 1;
  maneuverI.min = 0;
  maneuverI.step = 0.00001;
  maneuverI.value = maneuver;
  const maneuverR = document.createElement("input");
  maneuverR.type = "range";
  maneuverR.max = 1;
  maneuverR.min = 0;
  maneuverR.step = 0.00001;
  maneuverR.value = maneuver;
  const maneuverHoldL = document.createElement("label");
  maneuverHoldL.textContent = "Hold maneuver";
  const maneuverHoldI = document.createElement("input");
  maneuverHoldI.type = "checkbox";
  maneuverHoldI.checked = false;
  maneuverHoldL.appendChild(maneuverHoldI);
  linkSlider(maneuverI, maneuverR);
  maneuverF.appendChild(maneuverL);
  maneuverF.appendChild(maneuverI);
  maneuverF.appendChild(maneuverR);
  maneuverF.appendChild(maneuverHoldL);
  maneuverHoldI.addEventListener("change", (e) => {
    maneuverR.disabled = maneuverHoldI.checked;
    maneuverI.disabled = maneuverHoldI.checked;
    speedHoldI.disabled = maneuverHoldI.checked;
    burnHoldI.disabled = maneuverHoldI.checked;
  });

  const speedHandler = (e) => {
    const holdBurn = burnHoldI.checked;
    const holdManeuver = maneuverHoldI.checked;
    const speed = parseFloat(speedI.value);
    const burn = parseFloat(burnI.value);
    const maneuver = parseFloat(maneuverI.value);

    const delta = speed + burn + maneuver - 1;
    const halfdelta = delta / 2;
    if (holdBurn) {
      const newManeuver = maneuver - delta;
      if (newManeuver >= 0) {
        maneuverI.value = newManeuver.toFixed(5);
      } else {
        maneuverI.value = 0;
        speedI.value = (speed - delta).toFixed(5);
        speedI.dispatchEvent(new InputEvent("change"));
      }
    } else if (holdManeuver) {
      const newBurn = burn - delta;
      if (newBurn >= 0) {
        burnI.value = newBurn.toFixed(5);
      } else {
        burnI.value = 0;
        speedI.value = (speed - delta).toFixed(5);
        speedI.dispatchEvent(new InputEvent("change"));
      }
    } else {
      const newBurn = burn - halfdelta;
      const newManeuver = maneuver - halfdelta;

      if (newBurn < 0) {
        burnI.value = 0;
        maneuverI.value = (newManeuver + newBurn).toFixed(5);
      } else if (newManeuver < 0) {
        burnI.value = (newBurn + newManeuver).toFixed(5);
        maneuverI.value = 0;
      } else {
        maneuverI.value = newManeuver.toFixed(5);
        burnI.value = newBurn.toFixed(5);
      }
    }

    burnI.dispatchEvent(new InputEvent("change"));
    maneuverI.dispatchEvent(new InputEvent("change"));
  };

  const burnHandler = (e) => {
    const holdSpeed = speedHoldI.checked;
    const holdManeuver = maneuverHoldI.checked;
    const speed = parseFloat(speedI.value);
    const burn = parseFloat(burnI.value);
    const maneuver = parseFloat(maneuverI.value);

    const delta = speed + burn + maneuver - 1;
    const halfdelta = delta / 2;
    if (holdSpeed) {
      const newManeuver = maneuver - delta;
      if (newManeuver >= 0) {
        maneuverI.value = newManeuver.toFixed(5);
      } else {
        maneuverI.value = 0;
        burnI.value = (burn - delta).toFixed(5);
        burnI.dispatchEvent(new InputEvent("change"));
      }
    } else if (holdManeuver) {
      const newSpeed = speed - delta;
      if (newSpeed >= 0) {
        speedI.value = newSpeed.toFixed(5);
      } else {
        speedI.value = 0;
        burnI.value = (burn - delta).toFixed(5);
        burnI.dispatchEvent(new InputEvent("change"));
      }
    } else {
      const newSpeed = speed - halfdelta;
      const newManeuver = maneuver - halfdelta;

      if (newSpeed < 0) {
        speedI.value = 0;
        maneuverI.value = (newManeuver + newSpeed).toFixed(5)
      } else if (newManeuver < 0) {
        speedI.value = (newSpeed + newManeuver).toFixed(5)
        maneuverI.value = 0;
      } else {
        maneuverI.value = newManeuver.toFixed(5);
        speedI.value = newSpeed.toFixed(5);
      }
    }

    speedI.dispatchEvent(new InputEvent("change"));
    maneuverI.dispatchEvent(new InputEvent("change"));
  };

  const maneuverHandler = (e) => {
    const holdSpeed = speedHoldI.checked;
    const holdBurn = burnHoldI.checked;
    const speed = parseFloat(speedI.value);
    const burn = parseFloat(burnI.value);
    const maneuver = parseFloat(maneuverI.value);

    const delta = speed + burn + maneuver - 1;
    const halfdelta = delta / 2;
    if (holdSpeed) {
      const newBurn = burn - delta;
      if (newBurn >= 0) {
        burnI.value = newBurn.toFixed(5);
      } else {
        burnI.value = 0;
        maneuverI.value = (maneuver - delta).toFixed(5);
        maneuverI.dispatchEvent(new InputEvent("change"));
      }
    } else if (holdBurn) {
      const newSpeed = speed - delta;
      if (newSpeed >= 0) {
        speedI.value = newSpeed.toFixed(5);
      } else {
        speedI.value = 0;
        maneuverI.value = (maneuver - delta).toFixed(5);
        maneuverI.dispatchEvent(new InputEvent("change"));
      }
    } else {
      const newSpeed = speed - halfdelta;
      const newBurn = burn - halfdelta;

      if (newSpeed < 0) {
        speedI.value = 0;
        burnI.value = (newBurn + newSpeed).toFixed(5);
      } else if (newBurn < 0) {
        speedI.value = (newSpeed + newBurn).toFixed(5);
        burnI.value = 0;
      } else {
        burnI.value = newBurn.toFixed(5);
        speedI.value = newSpeed.toFixed(5);
      }
    }

    speedI.dispatchEvent(new InputEvent("change"));
    burnI.dispatchEvent(new InputEvent("change"));
  };

  speedI.addEventListener("input", speedHandler);
  speedR.addEventListener("input", speedHandler);
  burnI.addEventListener("input", burnHandler);
  burnR.addEventListener("input", burnHandler);
  maneuverI.addEventListener("input", maneuverHandler);
  maneuverR.addEventListener("input", maneuverHandler);

  let sizeF = null;
  let sizeI = null;
  let sizeR = null;
  if (missile.selectableEngineSize()) {
    const min = missile.engineSocketBounds.min;
    const max = missile.engineSocketBounds.max;

    sizeF = document.createElement("fieldset");
    sizeF.classList.add("control-group");
    const sizeL = document.createElement("legend");
    sizeL.textContent = "Engine Size";
    sizeI = document.createElement("input");
    sizeI.type = "number";
    sizeI.name = "size";
    sizeI.max = max;
    sizeI.min = min;
    sizeI.step = 1;
    sizeI.value = currentSize;
    sizeR = document.createElement("input");
    sizeR.type = "range";
    sizeR.max = max;
    sizeR.min = min;
    sizeR.step = 1;
    sizeR.value = currentSize;
    linkSlider(sizeI, sizeR);

    sizeF.appendChild(sizeL);
    sizeF.appendChild(sizeI);
    sizeF.appendChild(sizeR);
  }

  const updateCallback = (e) => {
    speedEl.textContent = speedI.value;
    burnEl.textContent = burnI.value;
    maneuverEl.textContent = maneuverI.value;
    let size = parseInt(sizeEl.textContent, 10);
    if (sizeI !== null && warheadSizeEl != null) {
      const warheadSize = parseInt(warheadSizeEl.textContent, 10);
      const newSize = parseInt(sizeI.value, 10);
      const oldSize = size;
      const newWarheadSize = warheadSize + (oldSize - newSize)
      sizeEl.textContent = sizeI.value;
      warheadSizeEl.textContent = newWarheadSize.toString();
      size = newSize;
    } else if (sizeI !== null) {
      sizeI.value = size;
    }

    valueCB({ speed: parseFloat(speedI.value), burn: parseFloat(burnI.value), maneuver: parseFloat(maneuverI.value), size: size });
  };
  speedI.addEventListener("change", updateCallback);
  burnI.addEventListener("change", updateCallback);
  maneuverI.addEventListener("change", updateCallback);
  if (sizeI !== null) {
    sizeI.addEventListener("input", updateCallback);
    sizeR.addEventListener("input", updateCallback);
  }
  return [speedF, maneuverF, burnF, sizeF];
}

function makeEngineOutputs(missile) {
  const outputDiv = document.createElement("div");
  outputDiv.classList.add("engine-outputs");

  // max range, top speed, acceleration, turn acceleration
  const rangeF = document.createElement("fieldset");
  rangeF.classList.add("output");
  const rangeL = document.createElement("legend");
  rangeL.textContent = "Maximum Range";
  const rangeP = document.createElement("p");
  rangeF.appendChild(rangeL);
  rangeF.appendChild(rangeP);

  const speedF = document.createElement("fieldset");
  speedF.classList.add("output");
  const speedL = document.createElement("legend");
  speedL.textContent = "Maximum speed";
  const speedP = document.createElement("p");
  speedF.appendChild(speedL);
  speedF.appendChild(speedP);

  const accelerationF = document.createElement("fieldset");
  accelerationF.classList.add("output");
  const accelerationL = document.createElement("legend");
  accelerationL.textContent = "Maximum acceleration";
  const accelerationP = document.createElement("p");
  accelerationF.appendChild(accelerationL);
  accelerationF.appendChild(accelerationP);

  const turnAccelerationF = document.createElement("fieldset");
  turnAccelerationF.classList.add("output");
  const turnAccelerationL = document.createElement("legend");
  turnAccelerationL.textContent = "Maximum Turn Acceleration";
  const turnAccelerationP = document.createElement("p");
  turnAccelerationF.appendChild(turnAccelerationL);
  turnAccelerationF.appendChild(turnAccelerationP);
  turnAccelerationP.textContent = "TODO";

  const outputCB = ({ speed, burn, maneuver, size }) => {
    const acceleration = missile.acceleration(maneuver);
    const topSpeed = missile.topSpeed(speed);
    const maxRange = missile.maxRange(size, speed, burn, maneuver);

    rangeP.textContent = Intl.NumberFormat(undefined, { style: 'unit', unit: 'meter', maximumFractionDigits: 0 }).format(maxRange);
    speedP.textContent = Intl.NumberFormat(undefined, { style: 'unit', unit: 'meter-per-second', maximumFractionDigits: 2 }).format(topSpeed);
    accelerationP.textContent = Intl.NumberFormat(undefined, { style: 'decimal', maximumFractionDigits: 2 }).format(acceleration) + " G";
  };

  outputDiv.appendChild(rangeF);
  outputDiv.appendChild(speedF);
  outputDiv.appendChild(accelerationF);
  outputDiv.appendChild(turnAccelerationF);
  return [outputDiv, outputCB];
}

const heiKey = "Stock/HE Impact";
const hekpKey = "Stock/HE Kinetic Penetrator";
const fragKey = "Stock/Blast Fragmentation";
const fragElKey = "Stock/Blast Fragmentation EL";

function makeEngineUI(header, missile, doc, resolver) {
  const engineSocket = doc.evaluate(`//MissileTemplate/Sockets/MissileSocket[position()=${missile.engineSocketIndex}]`, doc, resolver, XPathResult.FIRST_ORDERED_NODE_TYPE).singleNodeValue;
  const engine = doc.evaluate(".//InstalledComponent", engineSocket, resolver, XPathResult.FIRST_ORDERED_NODE_TYPE).singleNodeValue;
  let warheadSocket = null;
  if (missile.warheadSocketIndex !== null) {
    warheadSocket = doc.evaluate(`//MissileTemplate/Sockets/MissileSocket[position()=${missile.warheadSocketIndex}]`, doc, resolver, XPathResult.FIRST_ORDERED_NODE_TYPE).singleNodeValue;
  }

  const sizeEl = doc.evaluate(".//../Size", engine, resolver, XPathResult.FIRST_ORDERED_NODE_TYPE).singleNodeValue;
  const speedEl = doc.evaluate(".//A", engine, resolver, XPathResult.FIRST_ORDERED_NODE_TYPE).singleNodeValue;
  const durationEl = doc.evaluate(".//B", engine, resolver, XPathResult.FIRST_ORDERED_NODE_TYPE).singleNodeValue;
  const maneuverabilityEl = doc.evaluate(".//C", engine, resolver, XPathResult.FIRST_ORDERED_NODE_TYPE).singleNodeValue;
  let warheadSizeEl = null;
  if (warheadSocket !== null) {
    warheadSizeEl = doc.evaluate(".//Size", warheadSocket, resolver, XPathResult.FIRST_ORDERED_NODE_TYPE).singleNodeValue;
  }

  const engineDiv = makeEngineDiv();
  const engineHeader = makeEngineHeader(header);
  const [outputs, outputCB] = makeEngineOutputs(missile);
  const [speedF, maneuverF, burnF, sizeF] = makeEngineFields(missile, speedEl, durationEl, maneuverabilityEl, sizeEl, warheadSizeEl, outputCB);

  engineDiv.appendChild(engineHeader);
  engineDiv.appendChild(speedF);
  engineDiv.appendChild(burnF);
  engineDiv.appendChild(maneuverF);

  outputCB({ speed: parseFloat(speedEl.textContent), burn: parseFloat(durationEl.textContent), maneuver: parseFloat(maneuverabilityEl.textContent), size: parseInt(sizeEl.textContent, 10) });

  if (sizeF !== null) {
    engineDiv.appendChild(sizeF);
  }

  return [engineDiv, outputs];
}

function makeMissileUI(doc, filename) {
  const resolver = doc.createNSResolver(doc);
  const designation = doc.evaluate("//MissileTemplate/Designation/text()", doc, resolver, XPathResult.STRING_TYPE).stringValue;
  const shortname = doc.evaluate("//MissileTemplate/Nickname/text()", doc, resolver, XPathResult.STRING_TYPE).stringValue;
  const type = doc.evaluate("//MissileTemplate/BodyKey/text()", doc, resolver, XPathResult.STRING_TYPE).stringValue;
  const missile = missilesByBodyKey[type];

  if (missile === undefined) {
    throw "Unknown Missile Type";
  }

  const enginesContainer = document.getElementById("engines-container");
  const missileForm = makeMissileForm();
  const missileHeader = makeMissileHeader(`${designation} ${shortname}`);
  const missileDownload = makeMissileDownload();
  const missileRemove = makeMissileRemove();
  missileForm.appendChild(missileHeader);
  missileForm.appendChild(missileDownload);
  missileForm.appendChild(missileRemove);

  if (missile.sprintStage != null) {
    const [sprintDiv, sprintOutputs] = makeEngineUI("Sprint Stage", missile.sprintStage, doc, resolver);

    missileForm.appendChild(sprintDiv);
    missileForm.appendChild(sprintOutputs);
  }

  const [cruiseDiv, cruiseOutputs] = makeEngineUI("Cruise Stage", missile, doc, resolver);
  missileForm.appendChild(cruiseDiv);
  missileForm.appendChild(cruiseOutputs);

  missileForm.addEventListener("submit", (e) => {
    e.preventDefault();
    e.stopPropagation();
    const xmlstr = new XMLSerializer().serializeToString(doc);
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

    enginesContainer.removeChild(missileForm);
  });

  missileRemove.addEventListener("click", (e) => {
    e.preventDefault();
    e.stopPropagation();
    enginesContainer.removeChild(missileForm);
  });
  enginesContainer.appendChild(missileForm);
}

function handleFileUpload(file) {
  file.text().then(handleFileContent).catch(alert).then((doc) => {
    makeMissileUI(doc, file.name);
  }).catch(alert);
}

function ui() {
  const dragTarget = document.getElementById("drag-target");
  const fileInput = document.getElementById("missile-file");
  fileInput.addEventListener("change", (e) => {
    if (fileInput.files) {
      [...fileInput.files].forEach((file, i) => {
        if(file.name.endsWith(".missile")) {
          handleFileUpload(file);
        }
      });
    }
  });

  dragTarget.addEventListener("drop", (e) => {
    e.preventDefault();
    dragTarget.classList.remove("dragging");

    if (e.dataTransfer.files) {
      [...e.dataTransfer.files].forEach((file, i) => {
        console.log(file.type);
        if(file.name.endsWith(".missile")) {
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
}

ui();
