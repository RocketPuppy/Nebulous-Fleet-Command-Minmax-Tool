import { setupMissileBuilder } from "./missile-builder.js";
import { refreshArmorPen } from "./armor-penetration.js";

let selectedWeapon = null;

export function getWeapon() {
    return selectedWeapon;
}

function selectWeapon(weapon) {
    selectedWeapon = weapon;
    refreshArmorPen();
}
setupMissileBuilder(selectWeapon);
