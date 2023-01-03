import { base_damage, base_pen, period, fpa_modifier } from "./beam.js";
import beamCurve from "./beam-curve.js";

export const beam = "beam";

export function interpolate_beam_curve(range, maxRange, value) {
  const p = parseFloat((range/maxRange).toFixed(2));
  const mod = beamCurve.find((x) => x[0] === p)[1];
  return value * mod;
}

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

export function setupBeamBuilder(weaponSelectedCB) {
  const form = document.getElementById("beam-builder");
  const fpaInput = form.elements.namedItem("beam-fpa");
  const maxRangeInput = form.elements.namedItem("beam-max-range");
  const rangeInput = form.elements.namedItem("beam-range");
  const rangeSlider = form.elements.namedItem("beam-range-slider");
  linkSlider(rangeInput, rangeSlider);

  const timeInput = form.elements.namedItem("beam-time");
  const timeSlider = form.elements.namedItem("beam-time-slider");
  linkSlider(timeInput, timeSlider);

  const armorPenOutput = document.getElementById("beam-armor-penetration-out");
  const componentDamageOutput = document.getElementById("beam-component-damage-out");

  maxRangeInput.forEach((e) => {
    e.addEventListener("change", (e) => {
      e.preventDefault();
      e.stopPropagation();

      rangeInput.max = maxRangeInput.value;
      rangeSlider.max = maxRangeInput.value;

      if(parseInt(rangeInput.value, 10) > parseInt(maxRangeInput.value, 10)) {
        rangeInput.value = maxRangeInput.value;
        rangeInput.dispatchEvent(new InputEvent("input"));
      }
    });
  });
  form.addEventListener("submit", (e) => {
    e.preventDefault();
    e.stopPropagation();

    const fpas = parseInt(fpaInput.value, 10);
    const maxRange = parseInt(maxRangeInput.value, 10);
    const range = parseInt(rangeInput.value, 10);
    const time = parseFloat(timeInput.value);

    const armorPenetration = interpolate_beam_curve(range, maxRange, base_pen * fpa_modifier(fpas)) * (time / period);
    const componentDamage = interpolate_beam_curve(range, maxRange, base_damage * fpa_modifier(fpas)) * (time / period);

    armorPenOutput.textContent = armorPenetration.toFixed(2);
    componentDamageOutput.textContent = componentDamage.toFixed(2);

    const name = maxRange === 5000 ? "Beam - Turret" : "Beam - Spinal";

    weaponSelectedCB(beam, { name, armorPenetration, componentDamage, maxRange, range, fpas });
  });
}
