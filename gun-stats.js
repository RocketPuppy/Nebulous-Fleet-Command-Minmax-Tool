const caliber120 = {
  name: "120mm",
  caliber: 120,
};
const caliber250 = {
  name: "250mm",
  caliber: 250,
};
const caliber450 = {
  name: "450mm",
  caliber: 450,
};
const caliber300 = {
  name: "300mm",
  caliber: 300,
};

export const ap120 = {
    name: "120mm AP Shell",
    velocity: 800,
    range: 7200,
    armorPenetration: 45,
    componentDamage: 25,
    caliber: caliber120,
};
export const he120 = {
    name: "120mm HE Shell",
    velocity: 800,
    range: 7200,
    armorPenetration: 30,
    componentDamage: 45,
    caliber: caliber120,
};
export const rpf120 = {
    name: "120mm HE-RPF Shell",
    velocity: 800,
    range: 7200,
    armorPenetration: 10,
    componentDamage: 6,
    caliber: caliber120,
};
export const ap250 = {
    name: "250mm AP Shell",
    velocity: 800,
    range: 8000,
    armorPenetration: 60,
    componentDamage: 60,
    caliber: caliber250,
};
export const he250 = {
    name: "250mm HE Shell",
    velocity: 800,
    range: 8000,
    armorPenetration: 40,
    componentDamage: 75,
    caliber: caliber250,
};
export const rpf250 = {
    name: "250mm HE-RPF Shell",
    velocity: 800,
    range: 8000,
    armorPenetration: 20,
    componentDamage: 16,
    caliber: caliber250,
};
export const ap450 = {
    name: "450mm AP Shell",
    velocity: 750,
    range: 11250,
    armorPenetration: 110,
    componentDamage: 100,
    caliber: caliber450,
};
export const he450 = {
    name: "450mm HE Shell",
    velocity: 750,
    range: 11250,
    armorPenetration: 65,
    componentDamage: 150,
    caliber: caliber450,
};
export const ap300 = {
    name: "300mm AP Rail Sabot",
    velocity: 3000,
    range: 24000,
    armorPenetration: 200,
    componentDamage: 70,
    caliber: caliber300,
};

export default {
    ammo: [he120, ap120, rpf120, he250, ap250, rpf250, he450, ap450, ap300],
    calibers: [caliber120, caliber250, caliber450, caliber300],
}
