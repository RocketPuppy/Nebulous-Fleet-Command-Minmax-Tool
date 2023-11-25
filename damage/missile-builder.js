import missileStats from "./../js/missile-stats.js";
import warheadStats from "./../js/warhead-stats.js";

export const missilehekp = "missilehekp";
export const missileheimpact = "missileheimpact";

function linkSlider(input, slider) {
  input.addEventListener("input", (e) => {
    slider.value = input.value;
  });
  slider.addEventListener("input", (e) => {
    input.value = slider.value;
  });
  if (input.value !== null && input.value !== undefined && input.value !== "") {
    slider.value = input.value;
  }
  if (slider.value !== null && slider.value !== undefined && slider.value !== "") {
    input.value = slider.value;
  }
}

export function setupMissileBuilder(weaponSelectedCB) {
  const form = document.getElementById("missile-builder");
  const bodySelect = form.elements.namedItem("missile-body-select");
  const warheadSelect = form.elements.namedItem("missile-warhead-select");
  const sizeInput = form.elements.namedItem("missile-warhead-size");
  const sizeSlider = form.elements.namedItem("missile-warhead-size-slider");
  const terminalSpeedInput = form.elements.namedItem("missile-terminal-speed");
  const terminalSpeedSlider = form.elements.namedItem("missile-terminal-speed-slider");

  const armorPenOutput = document.getElementById("missile-armor-penetration-out");
  const componentDamageOutput = document.getElementById("missile-component-damage-out");

  linkSlider(sizeInput, sizeSlider);
  linkSlider(terminalSpeedInput, terminalSpeedSlider);

  for(const key in missileStats) {
    if(Object.hasOwn(missileStats, key)) {
      const o = new Option(missileStats[key].name, key);
      bodySelect.add(o);
    }
  }
  for(const key in warheadStats) {
    if(Object.hasOwn(warheadStats, key)) {
      const o = new Option(warheadStats[key].name, key);
      warheadSelect.add(o);
    }
  }

  bodySelect.addEventListener("change", (e) => {
    const missile = missileStats[bodySelect.value];

    const currentSize = parseInt(sizeInput.value, 10);
    sizeInput.value = missile.warheadBounds.bound(currentSize);
    sizeSlider.value = missile.warheadBounds.bound(currentSize);
    sizeInput.min = missile.warheadBounds.min;
    sizeInput.max = missile.warheadBounds.max;
    sizeSlider.min = missile.warheadBounds.min;
    sizeSlider.max = missile.warheadBounds.max;
    sizeInput.disabled = !missile.selectableWarhead;
    sizeSlider.disabled = !missile.selectableWarhead;

    const currentSpeed = parseInt(terminalSpeedInput.value, 10);
    terminalSpeedInput.value = missile.speedBounds.bound(currentSpeed);
    terminalSpeedSlider.value = missile.speedBounds.bound(currentSpeed);
    terminalSpeedInput.min = missile.speedBounds.min;
    terminalSpeedInput.max = missile.speedBounds.max;
    terminalSpeedSlider.min = missile.speedBounds.min;
    terminalSpeedSlider.max = missile.speedBounds.max;
    terminalSpeedInput.disabled = !missile.selectableWarhead;
    terminalSpeedSlider.disabled = !missile.selectableWarhead;

    warheadSelect.disabled = !missile.selectWarhead;
  });
  bodySelect.dispatchEvent(new InputEvent("change"));

  form.addEventListener("submit", (e) => {
    e.preventDefault();
    e.stopPropagation();

    const missile = missileStats[bodySelect.value].clone();
    const warhead = missile.selectableWarhead ? warheadStats[warheadSelect.value] : missile.warhead;
    const size = parseInt(sizeInput.value, 10);
    const speed = parseInt(terminalSpeedInput.value, 10);
    missile.selectWarhead(warhead, size, speed);
    armorPenOutput.textContent = missile.armorPenetration.toFixed(2);
    componentDamageOutput.textContent = missile.componentDamage.toFixed(2);

    if (warhead.name === "HE Impact") {
      weaponSelectedCB(missileheimpact, missile);
    } else if (warhead.name === "HEKP") {
      weaponSelectedCB(missilehekp, missile);
    }
  });
}
