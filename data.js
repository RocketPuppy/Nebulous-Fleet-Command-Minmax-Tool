class PointDefense {
    constructor(name, accuracies, traverse, elevation, ammo, rof = null, reload_time = null, recycle_time = null, ammo_capacity = null) {
        this.name = name;
        this.accuracies = accuracies;
        this.traverse = traverse; // deg/s
        this.elevation = elevation; // deg/s
        this.ammunition = ammo;
        this._rof = rof; // rounds/minute
        this.reload_time = reload_time; // s
        this.recycle_time = recycle_time; // s
        this.ammo_capacity = ammo_capacity; // rounds
    }

    get rof() {
        if (this._rof !== null) {
            return this._rof;
        } else {
            return 60 / this.recycle_time;
        }
    }

    get rof_sustained() {
        if (this._rof !== null) {
            return this._rof;
        } else {
            return (this.ammo_capacity - 1) * this.recycle_time + this.reload_time;
        }
    }
}

class Accuracy {
    constructor(distance, spread) {
        this.distance = distance; //km
        this.spread = spread;  // m
    }
}

class Ammo {
    constructor(name, velocity, armor_penetration, component_damage, max_range, explosion = null) {
        this.name = name;
        this.velocity = velocity,   // m/s
        this.armor_penetration = armor_penetration; // cm
        this.component_damage = component_damage;   // hp
        this.max_range = max_range; // m
        this.explosion = explosion;
    }
}

export const defender = new PointDefense(
    "Mk20 Defender",
    [new Accuracy(1, 3)],
    100,
    100,
    [new Ammo("20mm Slug", 700, 3, 15, 1750)],
    2400
);

const flak_round = new Ammo("50mm Flak", 650, 5, 15, 2002)
export const rebound = new PointDefense(
    "Mk25 Rebound",
    [new Accuracy(1, 35)],
    80,
    80,
    [flak_round],
    null,
    3,
    0.3,
    15
);

export const stonewall = new PointDefense(
    "Mk29 Stonewall",
    [new Accuracy(1, 52)],
    30,
    30,
    [flak_round],
    null,
    0.25,
    0.25,
    100
);

const aurora_bursts = 5;
export const aurora = new PointDefense(
    "Mk90 Aurora",
    [new Accuracy(1.5, 1), new Accuracy(3, 1)],
    100,
    100,
    [new Ammo("Aurora Laser", Infinity, 3, 40/aurora_bursts, 3000)],
    null,
    3.4,
    1.8/aurora_bursts,
    aurora_bursts
);

export const sarissa = new PointDefense(
    "Mk95 Sarissa",
    [new Accuracy(3, 5), new Accuracy(6, 10)],
    30,
    30,
    [new Ammo("15mm Sandshot", 2500, 1, 65, 6250)],
    null,
    8,
    1,
    1
);

class Missile {
    constructor(name, acceleration, turn_accleration, max_speed, health, collider) {
        this.name = name;
        this.acceleration = acceleration;   // G
        this.turn_accleration = turn_accleration;   // G
        this.max_speed = max_speed; // m/s
        this.health = health;   // hp
        this.collider = collider;
    }
}

class Collider {
    constructor(height, radius) {
        this.height = height;   // unity unit
        this.radius = radius;   // unity unit
    }
}

const s1_balestra = new Missile(
    "SGM-1 Balestra",
    76.5,
    6,
    350,
    10,
    new Collider(0.51, 0.05)
)

const s2_tempest = new Missile(
    "SGM-2 Tempest",
    20.5,
    3.5,
    220,
    30,
    new Collider( 0.64, 0.03)
);

const s2h_cyclone_cruise = new Missile(
    "SGMH-2 Cyclone (Cruise)",
    8.7,
    1,
    300,
    20,
    new Collider(0.64, 0.04)
);

const s2h_cyclone_sprint = new Missile(
    "SGMH-2 Cyclone (Sprint)",
    71.4,
    6,
    500,
    20,
    new Collider(0.64, 0.04)
)

const s3_pilum = new Missile(
    "SGT-3 Pilum",
    7.1,
    3.5,
    150,
    110,
    new Collider(1.087418, 0.09)
);

const s3h_atlatl_cruise = new Missile(
    "SGMH-3 Atlatl (Cruise)",
    7.1,
    1.3,
    150,
    60,
    new Collider(1.03, 0.08)
);

const s3h_atlatl_sprint = new Missile(
    "SGMH-3 Atlatl (Sprint)",
    61.2,
    9.8,
    1000,
    60,
    new Collider(1.03, 0.08)
);

export const point_defense = {
    defender,
    rebound,
    stonewall,
    aurora,
    sarissa
};

export const missiles = {
    s1_balestra,
    s2_tempest,
    s3_pilum,
    s2h_cyclone_cruise,
    s2h_cyclone_sprint,
    s3h_atlatl_cruise,
    s3h_atlatl_sprint,
    s2h_cyclone: {
        sprint: s2h_cyclone_sprint,
        cruise: s2h_cyclone_cruise
    },
    s3h_atlatl: {
        sprint: s3h_atlatl_sprint,
        cruise: s3h_atlatl_cruise
    }
};