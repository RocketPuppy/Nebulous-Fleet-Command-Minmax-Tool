import { setupMissileBuilder } from "./missile-builder.js";
import { setupGunBuilder } from "./gun-builder.js";
import { setupBeamBuilder } from "./beam-builder.js";
import { refreshArmorPen, setupArmorPen } from "./armor-penetration.js";
import { setupBeam } from "./beam.js";

let selectedWeapon = null;
let selectedWeaponType = null;

export function getWeapon() {
    return selectedWeapon;
}

export function getWeaponType() {
    return selectedWeaponType;
}

function selectWeapon(type, weapon) {
    selectedWeapon = weapon;
    selectedWeaponType = type;
    refreshArmorPen();
    hideWeaponSelectWarnings();
    fillWeaponSelected(weapon);
    beamWeaponSelected();
}

function hideWeaponSelectWarnings() {
  const warnings = document.querySelectorAll(".weapon-select-warning");
  warnings.forEach((e) => {
    e.classList.add("hidden");
  });
}

function fillWeaponSelected(weapon) {
  const weaponSelecteds = document.querySelectorAll(".weapon-selected");
  weaponSelecteds.forEach((n) => {
    n.classList.remove("hidden");
    const name = n.querySelector(".weapon-selected-name");
    const pen = n.querySelector(".weapon-selected-penetration");
    const damage = n.querySelector(".weapon-selected-damage");

    if (name) {
      name.textContent = weapon.name;
    }
    pen.textContent = weapon.armorPenetration.toFixed(2);
    damage.textContent = weapon.componentDamage.toFixed(2);
  });
}

let beamWeaponSelected = null;
function setup() {
  setupMissileBuilder(selectWeapon);
  setupGunBuilder(selectWeapon);
  setupBeamBuilder(selectWeapon);
  beamWeaponSelected = setupBeam();
  setupArmorPen();
}

document.addEventListener("DOMContentLoaded", setup);
