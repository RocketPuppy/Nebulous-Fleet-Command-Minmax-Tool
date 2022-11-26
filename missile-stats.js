class Missile {
  constructor({ name, scalingFactor, sprintStage, speedBounds, engineSocketBounds, maneuverBounds, flightTimeBounds, warheadSocketIndex, engineSocketIndex }) {
    this.name = name;
    this.scalingFactor = scalingFactor;
    this.sprintStage = sprintStage;
    this.speedBounds = speedBounds;
    this.engineSocketBounds = engineSocketBounds;
    this.maneuverBounds = maneuverBounds;
    this.flightTimeBounds = flightTimeBounds;
    this.warheadSocketIndex = warheadSocketIndex;
    this.engineSocketIndex = engineSocketIndex;
  }

  selectWarhead(warhead, size) {
    this.warhead = warhead;
    this.size = size;
  }

  get armorPenetration() {
    return this.warhead.armorPenetration(this.weightedSize);
  }

  get componentDamage() {
    return this.warhead.componentDamage(this.weightedSize);
  }

  get weightedSize() {
    return this.scalingFactor * this.size;
  }

  acceleration(thrustDial) {
    return this.maneuverBounds.lerp(thrustDial);
  }

  topSpeed(speedDial) {
    return this.speedBounds.lerp(speedDial);
  }

  selectableEngineSize() {
    return this.engineSocketBounds.min !== this.engineSocketBounds.max;
  }

  maxRange(engineSize, speedDial, burnDial, thrustDial) {
    const flightTime = this.flightTimeBounds.lerp(burnDial) * engineSize;
    const speed = this.topSpeed(speedDial);
    const acceleration = this.acceleration(thrustDial) * 9.82; // convert from G

    const accelerationTime = speed/acceleration;

    if (accelerationTime > flightTime) {
      return 0.5 * acceleration * flightTime * flightTime;
    } else {
      const accelerationDistance = 0.5 * acceleration * accelerationTime * accelerationTime;
      const flightTimeAfterAccel = flightTime - accelerationTime;
      const flightDistance = flightTimeAfterAccel * speed;
      return accelerationDistance + flightDistance;
    }
  }
}

class Bounds {
  constructor(min, max) {
    this.min = min;
    this.max = max;
  }

  lerp(x) {
    const delta = this.max - this.min;
    const per = delta * x;
    return this.min + per;
  }

  bound(value) {
    if (this.aboveBound(value)) {
      return this.max;
    }
    if (this.belowBound(value)) {
      return this.min;
    }
    return value;
  }

  aboveBound(value) {
    return value > this.max;
  }

  belowBound(value) {
    return value < this.min;
  }
}

export const s2hsprint = new Missile({
  name: "S2H Cyclone",
  scalingFactor: 0.8,
  speedBounds: new Bounds(500, 1000),
  engineSocketBounds: new Bounds(1, 6),
  maneuverBounds: new Bounds(102.0, 204.1),
  flightTimeBounds: new Bounds(0.75, 2.5),
  warheadSocketIndex: 4,
  engineSocketIndex: 5,
});

export const s3hsprint = new Missile({
  name: "S3H Atlatl",
  scalingFactor: 1.8,
  speedBounds: new Bounds(550, 1000),
  engineSocketBounds: new Bounds(1, 9),
  maneuverBounds: new Bounds(14.3, 30.6),
  flightTimeBounds: new Bounds(0.85, 2.75),
  warheadSocketIndex: 5,
  engineSocketIndex: 6,
});

export const s2h = new Missile({
  name: "S2H Cyclone (Cruise)",
  scalingFactor: 0.8,
  sprintStage: s2hsprint,
  speedBounds: new Bounds(150, 350),
  engineSocketBounds: new Bounds(1,1),
  maneuverBounds: new Bounds(8.2, 16.3),
  flightTimeBounds: new Bounds(37.81, 129.06),
  warheadSocketIndex: null,
  engineSocketIndex: 6,
});

export const s3h = new Missile({
  name: "S3H Atlatl (Cruise)",
  scalingFactor: 1.8,
  sprintStage: s3hsprint,
  speedBounds: new Bounds(100, 200),
  engineSocketBounds: new Bounds(1, 1),
  maneuverBounds: new Bounds(6.1, 9.2),
  flightTimeBounds: new Bounds(78.335, 249.17),
  warheadSocketIndex: null,
  engineSocketIndex: 7,
});

export const s1 = new Missile({
  name: "S1 Balestra",
  scalingFactor: 0.33,
  speedBounds: new Bounds(250, 400),
  engineSocketBounds: new Bounds(1, 3),
  maneuverBounds: new Bounds(35.7, 76.5),
  flightTimeBounds: new Bounds(2, 8),
  warheadSocketIndex: 3,
  engineSocketIndex: 4,
});

export const s2 = new Missile({
  name: "S2 Tempest",
  scalingFactor: 1,
  speedBounds: new Bounds(150, 350),
  engineSocketBounds: new Bounds(1, 6),
  maneuverBounds: new Bounds(14.3, 30.6),
  flightTimeBounds: new Bounds(4, 20),
  warheadSocketIndex: 4,
  engineSocketIndex: 5,
});

export const s3 = new Missile({
  name: "S3T Pilum",
  scalingFactor: 3,
  speedBounds: new Bounds(125, 200),
  engineSocketBounds: new Bounds(1, 9),
  maneuverBounds: new Bounds(6.1, 9.2),
  flightTimeBounds: new Bounds(3, 17),
  warheadSocketIndex: 4,
  engineSocketIndex: 5,
});

export const missilesByBodyKey = {
  "Stock/SGM-1 Body": s1,
  "Stock/SGM-H-2 Body": s2h,
  "Stock/SGM-H-3 Body": s3h,
  "Stock/SGM-2 Body": s2,
  "Stock/SGT-3 Body": s3,
};

export default {
  "s1": s1,
  "s2": s2,
  "s2h": s2hsprint,
  "s3h": s3hsprint,
  "s3": s3,
};
