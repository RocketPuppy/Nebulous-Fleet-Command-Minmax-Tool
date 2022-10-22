class PointDefense {
    constructor(name, accuracies, traverse, elevation, ammo, rof = null, reload_time = null, recycle_time = null) {
        this.name = name;
        this.accuracies = accuracies;
        this.traverse = traverse; // deg/s
        this.elevation = elevation; // deg/s
        this.ammunition = ammo;
        this._rof = rof; // rounds/minute
    }

    get rof() {
        if (this._rof !== null) {
            return this._rof;
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
    constructor(name, velocity, armor_penetration, component_damage, max_range) {
        this.name = name;
        this.velocity = velocity,   // m/s
        this.armor_penetration = armor_penetration; // cm
        this.component_damage = component_damage;   // hp
        this.max_range = max_range; // m
    }
}

export const defender = new PointDefense(
    "Defender",
    [new Accuracy(1, 3)],
    100,
    100,
    [new Ammo("20mm Slug", 700, 3, 15, 1750)],
    2400
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
    defender
}
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