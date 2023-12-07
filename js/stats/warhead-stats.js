export class Warhead {
  constructor({ name, armorPen, armorFalloff, ricochet,
    ignoreEffectiveThickness, componentDamage, componentFalloff,
    maxPenetrationDepth }) {
    this.name = name;
    this.baseArmorPen = armorPen;
    this.armorFalloff = armorFalloff;
    this.ricochet = ricochet;
    this.ignoreEffectiveThickness = ignoreEffectiveThickness;
    this.baseComponentDamage = componentDamage;
    this.componentFalloff = componentFalloff;
    this.maxPenetrationDepth = maxPenetrationDepth;
  }

  armorPenetration(size, _speed) {
    return this.armorFalloff.calculate(this.baseArmorPen, size);
  }

  componentDamage(size) {
    return this.componentFalloff.calculate(this.baseComponentDamage, size);
  }
}

const minPenetrationSpeed = 25; // unity units per second
class CompositeWarhead {
  constructor(name, penetrator, explosive) {
    this.name = name;
    this.penetrator = penetrator;
    this.explosive = explosive;
  }

  armorPenetration(size, speed) {
    return this.penetrator.armorPenetration(size) * Math.max(0, (speed/10 - minPenetrationSpeed));
  }

  componentDamage(size) {
    return this.explosive.componentDamage(size);
  }
}

class ParabolicFalloff {
  constructor(falloffFactor) {
    this.falloffFactor = falloffFactor;
  }

  calculate(damage, size) {
    return damage * Math.sqrt(size * this.falloffFactor);
  }
}

class HEKPFalloff {
  constructor(falloffFactor) {
    this.falloffFactor = falloffFactor;
  }

  calculate(damage, size) {

  }
}

export class NoFalloff {
  calculate(damage, size) {
    return damage * size;
  }
}

export const hei = new Warhead({
  name: "HE Impact",
  armorPen: 30,
  armorFalloff: new ParabolicFalloff(0.8),
  ricochet: false,
  ignoreEffectiveThickness: true,
  componentDamage: 240,
  componentFalloff: new NoFalloff(),
  maxPenetrationDepth: 70,
});

export const hekp_penetrator = new Warhead({
  name: "HEKP Penetrator",
  armorPen: 3.5,
  armorFalloff: new ParabolicFalloff(0.8),
  ricochet: false,
  ignoreEffectiveThickness: false,
  componentDamage: 50,
  componentFalloff: new ParabolicFalloff(2),
  maxPenetrationDepth: 70,
});

export const hekp_explosive = new Warhead({
  name: "HEKP Explosive",
  armorPen: 30,
  armorFalloff: new NoFalloff(),
  ricochet: false,
  ignoreEffectiveThickness: true,
  componentDamage: 400,
  componentFalloff: new NoFalloff(),
  maxPenetrationDepth: 175,
});

export const hekp = new CompositeWarhead("HEKP", hekp_penetrator, hekp_explosive);

export default {
  hei,
  hekp,
}
