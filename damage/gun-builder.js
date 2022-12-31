import gunstats from "../gun-stats.js";

const { calibers, ammo } = gunstats;

export function setupGunBuilder(weaponSelectedCB) {
  const form = document.getElementById("gun-builder");
  const caliberSelect = form.elements.namedItem("gun-caliber");
  const ammoSelect = form.elements.namedItem("gun-ammo");

  const armorPenOutput = document.getElementById("gun-armor-penetration-out");
  const componentDamageOutput = document.getElementById("gun-component-damage-out");

  calibers.forEach((caliber) => {
    const o = new Option(caliber.name, caliber.caliber);
    caliberSelect.add(o);
  });

  caliberSelect.addEventListener("change", (e) => {
    e.preventDefault();
    e.stopPropagation();

    const selectedCaliber = parseInt(caliberSelect.value, 10);
    const selectedAmmo = ammo.filter((a) => a.caliber.caliber === selectedCaliber);

    while(ammoSelect.options.length > 0) {
      ammoSelect.remove(0);
    }
    selectedAmmo.forEach((ammo) => {
      const o = new Option(ammo.name, ammo.name);
      ammoSelect.add(o);
    });
  });
  caliberSelect.dispatchEvent(new InputEvent("change"));

  form.addEventListener("submit", (e) => {
    e.preventDefault();
    e.stopPropagation();

    const selectedAmmoName = ammoSelect.value;
    const selectedAmmo = ammo.find((a) => a.name === selectedAmmoName);

    armorPenOutput.textContent = selectedAmmo.armorPenetration.toFixed(2);
    componentDamageOutput.textContent = selectedAmmo.componentDamage.toFixed(2);

    weaponSelectedCB(selectedAmmo);
  });
}
