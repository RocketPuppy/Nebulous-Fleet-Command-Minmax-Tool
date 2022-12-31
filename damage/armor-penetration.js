import hullStats from "../hull-stats.js";
import { getWeapon } from "./damage.js";

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

const armorVis = document.getElementById("armor-visualization");
const armor = armorVis.getElementById("armor");
const penetrator = armorVis.getElementById("penetrator");

const initialArmorBbox = armor.getBBox();
const initialPenBbox = penetrator.getBBox();

// 1000px wide
// 500px tall

const armorAngleInput = document.getElementById("armor-angle");
const armorAngleSlider = document.getElementById("armor-angle-slider");
linkSlider(armorAngleInput, armorAngleSlider);

function centerOfBbox(bbox) {
  return { x: bbox.x + bbox.width/2, y: bbox.y + bbox.height/2 };
}

function scaleArmor(newWidth) {
  const initialWidth = initialArmorBbox.width;
  return newWidth / initialWidth;
}

function scalePenetration(penetration) {
  const initialPen = initialPenBbox.width;
  return penetration / initialPen;
}

function scalePenetratorHeight(newHeight) {
  const initialHeight = initialPenBbox.height;
  return newHeight / initialHeight;
}

function updateArmor(width, angle) {
  const transforms = armor.transform.baseVal;
  transforms.clear();

  let transform = armorVis.createSVGTransform();
  transform.setRotate(angle, 0, 0);
  transforms.appendItem(transform);

  transform = armorVis.createSVGTransform();
  transform.setScale(scaleArmor(width), 10);
  transforms.appendItem(transform);
}

function updatePenetrator(penetration, effectiveArmor) {
  const transforms = penetrator.transform.baseVal;
  transforms.clear();

  const penetrationScale = scalePenetration(penetration);

  let transform = armorVis.createSVGTransform();
  transform.setTranslate(-effectiveArmor / 2 + initialPenBbox.width * penetrationScale / 2, 0);
  transforms.appendItem(transform);

  transform = armorVis.createSVGTransform();
  transform.setScale(penetrationScale, 1);
  transforms.appendItem(transform);

  if(effectiveArmor > penetration) {
    penetrator.querySelectorAll("path").forEach((e) => {
      e.style.color = "red";
      e.style.fill = "red";
    });
  }
  if(effectiveArmor === penetration) {
    penetrator.querySelectorAll("path").forEach((e) => {
      e.style.color = "yellow";
      e.style.fill = "yellow";
    });
  }
  if(effectiveArmor < penetration) {
    penetrator.querySelectorAll("path").forEach((e) => {
      e.style.color = "blue";
      e.style.fill = "blue";
    });
  }
}

export function refreshArmorPen() {
  const angle = armorAngleInput.value;
  const selectedHull = hullStats.find((hull) => hull.name === hullInput.value);

  const effectiveArmor = selectedHull.armor / Math.cos(angle * Math.PI/180)
  const penetration = getWeapon() ? getWeapon().armorPenetration : 0;

  updateArmor(selectedHull.armor, angle);
  updatePenetrator(penetration, effectiveArmor);
}

armorAngleInput.addEventListener("input", function(e) {
  refreshArmorPen();
});
armorAngleSlider.addEventListener("input", function(e) {
  refreshArmorPen();
});

const hullInput = document.getElementById("armor-width");
for (const hull of hullStats) {
  const o = new Option(hull.name, hull.name);
  hullInput.add(o);
}
hullInput.selectedIndex = 0;

hullInput.addEventListener("change", function(e) {
  refreshArmorPen();
});

armorAngleInput.dispatchEvent(new InputEvent("input"));
