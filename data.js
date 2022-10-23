class PointDefense {
    constructor(name, accuracies, traverse, elevation, ammo, rof = null, reload_time = 0, recycle_time = 0, ammo_capacity = 1) {
        this.name = name;
        this.accuracies = accuracies;
        this.traverse = traverse; // deg/s
        this.elevation = elevation; // deg/s
        this.ammunition = ammo;
        this._rof = rof; // rounds/minute
        this.reload_time = reload_time; // s
        this.recycle_time = recycle_time; // s
        this.ammo_capacity = ammo_capacity; // rounds
        this.use_burst_rof = false;
    }

    seconds_to_fire(shots) {
        return 1/(this.rof_per_second * 1 / shots)
    }

    get rof() {
        if (this.use_burst_rof) {
            return this.rof_burst_per_minute;
        } else {
            return this.rof_sustained_per_minute;
        }
    }

    get rof_burst_per_minute() {
        if (this._rof !== null) {
            return this._rof;
        } else {
            return 60 / this.recycle_time;
        }
    }

    get rof_per_second() {
        return this.rof / 60;
    }
    
    get rof_sustained_per_minute() {
        return this.rof_sustained_per_seconds * 60;
    }

    get rof_sustained_per_seconds() {
        if (this._rof !== null) {
            return this._rof / 60;
        } else {
            return this.ammo_capacity / ((this.ammo_capacity - 1) * this.recycle_time + this.reload_time);
        }
    }

    get primary_ammo() {
        return this.ammunition[0];
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

    shots_to_kill(missile) {
        return Math.ceil(missile.health / this.component_damage);
    }

    *ranges(interval) {
        for(var i = this.max_range; i >= 0; i -= interval) {
            if (i <= 0 ) {
                break;
            }
            yield i;
        }
        yield 0;
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
    constructor(name, acceleration, turn_acceleration, max_speed, health, collider) {
        this.name = name;
        this.acceleration = acceleration;   // G
        this.turn_acceleration = turn_acceleration;   // G
        this.max_speed = max_speed; // m/s
        this.health = health;   // hp
        this.collider = collider;
    }

    distance_travelled(seconds) {
        return seconds * this.max_speed;
    }

    closing_velocity(ammo) {
        return ammo.velocity + this.max_speed;
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