import warheads from "./warhead-stats.js";

class Missile {
  constructor({ name, scalingFactor, sprintStage, speedBounds, engineSocketBounds, flightTimeBounds, thrustBounds, thrustAngleBounds, warheadSocketIndex, engineSocketIndex, mass }) {
    this.selectWarhead(warheads.hei, 3);
    this.name = name;
    this.scalingFactor = scalingFactor;
    this.sprintStage = sprintStage;
    this.speedBounds = speedBounds;
    this.engineSocketBounds = engineSocketBounds;
    this.flightTimeBounds = flightTimeBounds;
    this.thrustBounds = thrustBounds;
    this.thrustAngleBounds = thrustAngleBounds;
    this.warheadSocketIndex = warheadSocketIndex;
    this.engineSocketIndex = engineSocketIndex;
    this.mass = mass;
    this.warheadBounds = new Bounds(1, 8);
  }

  clone() {
    const o = {};
    for(const p in this) {
      o[p] = this[p];
    }
    return new Missile(o);
  }

  selectWarhead(warhead, warheadSize, warheadSpeed) {
    this.warhead = warhead;
    this.warheadSize = warheadSize;
    this.warheadSpeed = warheadSpeed;
    this.name = `${this.name} - ${warhead.name}`;
  }

  get armorPenetration() {
    return this.warhead.armorPenetration(this.weightedWarheadSize, this.warheadSpeed);
  }

  get componentDamage() {
    return this.warhead.componentDamage(this.weightedWarheadSize);
  }

  get weightedWarheadSize() {
    return this.scalingFactor * this.warheadSize;
  }

  thrust(thrustDial) {
    return this.thrustBounds.lerp(thrustDial);
  }

  acceleration(thrustDial) {
    return this.thrust(thrustDial) / this.mass;
  }

  topSpeed(speedDial) {
    return this.speedBounds.lerp(speedDial);
  }

  selectableEngineSize() {
    return this.engineSocketBounds.min !== this.engineSocketBounds.max;
  }

  flightTime(burnDial) {
    return this.flightTimeBounds.lerp(burnDial);
  }

  maxOffAngleThrust(thrustDial) {
    return this.thrustAngleBounds.lerp(thrustDial);
  }

  maxRange(engineSize, speedDial, burnDial, thrustDial) {
    const flightTime = this.flightTime(burnDial) * engineSize;
    const speed = this.topSpeed(speedDial);
    const acceleration = this.acceleration(thrustDial);

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

  maxTurnAcceleration(speedDial, thrustDial) { // in G
    const speed = this.topSpeed(speedDial);
    const acceleration = this.acceleration(thrustDial);
    const start = scaleVector([0, 0, 1], speed);
    const intoTurn = Quaternion.fromAxisAngle([0, 1, 0], this.maxOffAngleThrust(thrustDial) * Math.PI / 180).rotateVector([0, 0, 1]);
    const turnThrust = scaleVector(intoTurn, acceleration);
    const end = scaleVector(normalizeVector(addVector(start, turnThrust)), speed);
    
    const toVector = vectorTo(start, end);
    const toMag = magVector(toVector);
    return toMag / 9.8;
  }
}

function vectorTo(start, end) {
  return subVector(end, start);
}

function subVector(v1, v2) {
  return [v1[0] - v2[0], v1[1] - v2[1], v1[2] - v2[2]];
}

function addVector(v1, v2) {
  return [v1[0] + v2[0], v1[1] + v2[1], v1[2] + v2[2]];
}

function magVector(v) {
  return Math.sqrt(v[0] * v[0] + v[1] * v[1] + v[2] * v[2]);
}

function scaleVector(v, s) {
  return [v[0] * s, v[1] * s, v[2] * s];
}

function normalizeVector(v) {
  const mag = magVector(v);
  return [v[0] / mag, v[1] / mag, v[2] / mag];
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
  flightTimeBounds: new Bounds(0.75, 2.5),
  thrustBounds: new Bounds(500, 1000),
  thrustAngleBounds: new Bounds(25, 45),
  warheadSocketIndex: 4,
  engineSocketIndex: 5,
  mass: 0.5,
});

export const s3hsprint = new Missile({
  name: "S3H Atlatl",
  scalingFactor: 1.8,
  speedBounds: new Bounds(550, 1000),
  engineSocketBounds: new Bounds(1, 9),
  flightTimeBounds: new Bounds(0.85, 2.75),
  thrustBounds: new Bounds(1500, 2500),
  thrustAngleBounds: new Bounds(30, 60),
  warheadSocketIndex: 5,
  engineSocketIndex: 6,
  mass: 2,
});

export const s2h = new Missile({
  name: "S2H Cyclone (Cruise)",
  scalingFactor: 0.8,
  sprintStage: s2hsprint,
  speedBounds: new Bounds(150, 350),
  engineSocketBounds: new Bounds(1,1),
  flightTimeBounds: new Bounds(40, 130),
  thrustBounds: new Bounds(40, 80),
  thrustAngleBounds: new Bounds(8, 20),
  warheadSocketIndex: null,
  engineSocketIndex: 6,
  mass: 0.5,
});

export const s3h = new Missile({
  name: "S3H Atlatl (Cruise)",
  scalingFactor: 1.8,
  sprintStage: s3hsprint,
  speedBounds: new Bounds(100, 200),
  engineSocketBounds: new Bounds(1, 1),
  flightTimeBounds: new Bounds(80, 250),
  thrustBounds: new Bounds(120, 180),
  thrustAngleBounds: new Bounds(8, 30),
  warheadSocketIndex: null,
  engineSocketIndex: 7,
  mass: 2,
});

export const s1 = new Missile({
  name: "S1 Balestra",
  scalingFactor: 0.33,
  speedBounds: new Bounds(250, 400),
  engineSocketBounds: new Bounds(1, 3),
  flightTimeBounds: new Bounds(2, 8),
  thrustBounds: new Bounds(70, 150),
  thrustAngleBounds: new Bounds(15, 40),
  warheadSocketIndex: 3,
  engineSocketIndex: 4,
  mass: 0.2,
});

export const s2 = new Missile({
  name: "S2 Tempest",
  scalingFactor: 1,
  speedBounds: new Bounds(150, 350),
  engineSocketBounds: new Bounds(1, 6),
  flightTimeBounds: new Bounds(4, 20),
  thrustBounds: new Bounds(70, 150),
  thrustAngleBounds: new Bounds(12, 30),
  warheadSocketIndex: 4,
  engineSocketIndex: 5,
  mass: 0.5,
});

export const s3 = new Missile({
  name: "S3T Pilum",
  scalingFactor: 3,
  speedBounds: new Bounds(125, 200),
  engineSocketBounds: new Bounds(1, 9),
  thrustBounds: new Bounds(120, 180),
  flightTimeBounds: new Bounds(3, 17),
  thrustAngleBounds: new Bounds(8, 30),
  warheadSocketIndex: 4,
  engineSocketIndex: 5,
  mass: 2,
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
