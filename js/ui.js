import hullStats from "./hull-stats.js";
import componentStats from "./component-stats.js";

let ship = null;
let lastSubmittedComponent = null;

function shipToXml(ship) {
  const doc = document.implementation.createDocument(null, "Ship");
  const shipNode = doc.children[0];

  const SaveID = doc.createElement("SaveID");
  SaveID.setAttributeNS("http://www.w3.org/2001/XMLSchema-instance", "xsi:nil", "true");
  shipNode.append(SaveID);

  const Key = doc.createElement("Key");
  Key.textContent = ship.id;
  shipNode.append(Key);

  const Name = doc.createElement("Name");
  Name.textContent = ship.name;
  shipNode.append(Name);

  const Cost = doc.createElement("Cost");
  Cost.textContent = ship.totalCost.toString();
  shipNode.append(Cost);

  const Callsign = doc.createElement("Callsign");
  if (ship.callsign) {
    Callsign.textContent = ship.callsign;
  }
  shipNode.append(Callsign);

  const ShipNumber = doc.createElement("Number");
  ShipNumber.textContent = '0';
  shipNode.append(ShipNumber);

  const SymbolOption = doc.createElement("SymbolOption");
  SymbolOption.textContent = '0';
  shipNode.append(SymbolOption);

  const HullType = doc.createElement("HullType");
  HullType.textContent = ship.key;
  shipNode.append(HullType);

  const ModDependencies = doc.createElement("ModDependencies");
  shipNode.append(ModDependencies);

  const SocketMap = doc.createElement("SocketMap");
  shipNode.append(SocketMap);

  for(const socketId of Object.keys(ship.sockets)) {
    const HullSocket = doc.createElement("HullSocket");
    SocketMap.append(HullSocket);

    const Key = doc.createElement("Key");
    Key.textContent = socketId.substring(7); // for "socket-"
    HullSocket.append(Key);

    const ComponentName = doc.createElement("ComponentName");
    ComponentName.textContent = ship.sockets[socketId].key;
    HullSocket.append(ComponentName);

    if(ship.sockets[socketId].componentData !== undefined) {
      const ComponentData = doc.createElement("ComponentData");
      ComponentData.setAttributeNS("http://www.w3.org/2001/XMLSchema-instance", "xsi:type", ship.sockets[socketId].componentData);
      HullSocket.append(ComponentData);
    }
  }

  const WeaponGroups = doc.createElement("WeaponGroups");
  shipNode.append(WeaponGroups);

  const xmlstr = new XMLSerializer().serializeToString(doc);
  const blob = new Blob([xmlstr], { type: "application/ship+xml" });
  const url = URL.createObjectURL(blob);
  const a = document.createElement("a");
  a.style.display = 'none';
  a.href = url;
  a.download = (ship.name === "" ? "ship-template" : ship.name) + ".ship";
  document.body.appendChild(a);
  a.click();
  URL.revokeObjectURL(url);
  document.body.removeChild(a);
}

function shipCost(ship) {
  const sockets = Object.keys(ship.sockets);
  const compounding = {};

  let cost = ship.cost;
  for(const socket of sockets) {
    const component = ship.sockets[socket];
    if (component !== null && component !== undefined) {
      let componentCost = component.cost;
      if (typeof component.cost === "function") {
        const socketSize = ship.socketSizes[socket];
        componentCost = component.cost(socketSize.length, socketSize.width, socketSize.height);
      }
      if (component.compounding) {
        compounding[component.key] = (compounding[component.key] || 0) + 1;
        cost += componentCost * component.compounding(compounding[component.key]);
      } else {
        cost += componentCost;
      }
    }
  }
  return cost;
}

function setupUI() {
  const controls  = document.getElementById("controls");
  const newHullSelect = controls.elements.namedItem("new-hull-select");
  const exportShip = controls.elements.namedItem("export");
  const editBoard = document.getElementById("ship-layout");
  const shipCostDisplay = document.getElementById("ship-cost");

  for(const hull of hullStats) {
    if (hull.buildable) {
      const o = new Option(hull.name, hull.name);
      newHullSelect.add(o);
    }
  }

  controls.addEventListener("submit", (e) => {
    e.preventDefault();
    e.stopPropagation();

    const selectedHull = hullStats.find((hull) => hull.name === newHullSelect.value);
    if (selectedHull !== undefined) {
      const req = fetch(selectedHull["edit-board"]);
      ship = selectedHull;
      ship.sockets = {};
      ship.totalCost = shipCost(ship);
      shipCostDisplay.textContent = ship.totalCost.toString();
      nameInput.dispatchEvent(new InputEvent("change"));
      req.then((resp) => resp.text()).then((svg) => {
        editBoard.innerHTML = svg;
        setupEditBoard(editBoard, ship);
      });
    }
  });
  exportShip.addEventListener("click", (e) => {
    e.preventDefault();
    e.stopPropagation();

    if (ship !== null) {
      shipToXml(ship);
    }
  });

  const componentModal = document.getElementById("component-selector");
  const components = document.getElementById("components");
  const componentSelect = components.elements.namedItem("component-select");
  const socketKey = components.elements.namedItem("socket-key");
  const cancelButton = components.elements.namedItem("cancel");
  const removeButton = components.elements.namedItem("remove");
  components.addEventListener("submit", (e) => {
    e.preventDefault();
    e.stopPropagation();

    const selectedComp = componentStats.find((c) => c.name === componentSelect.value);

    if (ship !== null && selectedComp !== undefined) {
      ship.sockets[socketKey.value] = selectedComp;

      const socketSvg = document.getElementById(socketKey.value);
      socketSvg.classList.add("filled");

      lastSubmittedComponent = selectedComp;

      ship.totalCost = shipCost(ship);
      shipCostDisplay.textContent = ship.totalCost.toString();
    }

    componentModal.classList.remove("visible");
    console.log(ship);
  });
  cancelButton.addEventListener("click", (e) => {
    e.preventDefault();
    e.stopPropagation();

    componentModal.classList.remove("visible");
  });
  removeButton.addEventListener("click", (e) => {
    e.preventDefault();
    e.stopPropagation();

    if (ship !== null && ship.sockets[socketKey.value] !== null && ship.sockets[socketKey.value] !== undefined) {
      ship.sockets[socketKey.value] = null;

      const socketSvg = document.getElementById(socketKey.value);
      socketSvg.classList.remove("filled");
      componentModal.classList.remove("visible");

      ship.totalCost = shipCost(ship);
      shipCostDisplay.textContent = ship.totalCost.toString();
    }
    console.log(ship);
  });

  const shipAttributes = document.getElementById("ship-attributes");
  const nameInput = shipAttributes.elements.namedItem("ship-name");

  shipAttributes.addEventListener("submit", (e) => {
    e.preventDefault();
    e.stopPropagation();
  });
  nameInput.addEventListener("change", (e) => {
    if (ship !== null) {
      ship.name = nameInput.value;
    }
  });
}

function clickSocket(socket) {
  const componentModal = document.getElementById("component-selector");
  const components = document.getElementById("components");
  const componentSelect = components.elements.namedItem("component-select");
  const socketKey = components.elements.namedItem("socket-key");
  socketKey.value = socket.id;

  const isModule = socket.classList.contains("module");
  const isCompartment = socket.classList.contains("compartment");
  const isMount = socket.classList.contains("mount");

  const socketWidth = parseInt(socket.dataset.width, 10);
  const socketHeight = parseInt(socket.dataset.height, 10);
  const socketLength = parseInt(socket.dataset.length, 10);

  const filtered = componentStats.filter((comp) =>
    ((comp.type === "module" && isModule) ||
    (comp.type === "compartment" && isCompartment) ||
    (comp.type === "mount" && isMount)) &&
    (((comp.width <= socketWidth  && comp.length <= socketLength) || (comp.width <= socketLength && comp.length <= socketWidth)) &&
      comp.height <= socketHeight) &&
    comp.factions.some((f) => ship.factions.includes(f))
  );

  while(componentSelect.item(0)) {
    componentSelect.remove(0);
  }

  for(const component of filtered) {
    const o = new Option(component.name, component.name);
    componentSelect.add(o);
  }

  if (lastSubmittedComponent !== null && filtered.includes(lastSubmittedComponent)) {
    componentSelect.value = lastSubmittedComponent.name;
  }

  if (ship.sockets[socketKey.value] !== null && ship.sockets[socketKey.value] !== undefined) {
    componentSelect.value = ship.sockets[socketKey.value].name;
  }

  componentModal.classList.add("visible");
}

function setupEditBoard(editBoard, ship) {
  const sockets = document.querySelectorAll(".module, .mount, .compartment");
  ship.socketSizes = {};
  sockets.forEach((socket) => {
    const socketSize = {
      width: parseInt(socket.dataset.width, 10),
      height: parseInt(socket.dataset.height, 10),
      length: parseInt(socket.dataset.length, 10),
    };
    ship.socketSizes[socket.id] = socketSize;

    socket.addEventListener("click", (e) => {
      clickSocket(socket);
    });
  });
}

document.addEventListener("DOMContentLoaded", setupUI);
