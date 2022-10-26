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

    get angular_diameter() {
        return this.accuracies.concat().sort((a, b) => a.range - b.range).reverse()[0].angular_diameter;
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

    clone() {
        return new PointDefense(this.name, this.accuracies.map((a) => a.clone()), this.traverse, this.elevation, this.ammunition.map((a) => a.clone()), this._rof, this.reload_time, this.recycle_time, this.ammo_capacity);
    }
}

class Accuracy {
    constructor(distance, spread) {
        this.distance = distance; //km
        this.spread = spread;  // m
    }

    clone() {
        return new Accuracy(this.distance, this.spread);
    }

    get angular_diameter() {
        return 2.0 * Math.atan(this.spread / (2.0 * this.distance * 1000));
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

    clone() {
        return new Ammo(this.name, this.velocity, this.armor_penetration, this.component_damage, this.max_range, this.explosion);
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
    [new Ammo("Aurora Laser", Infinity, 3, 8, 3000)],
    null,
    3.4,
    1.0/aurora_bursts,
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

    maneuver_distance(seconds, starting_orthogonal_velocity = this.max_speed, accel_percent = 1) {
        const accel = this.turn_acceleration * accel_percent;
        // time to turn orthogonal to vector, assuming max speed is time to zero speed + time to increase it again given turn accel
        const time_to_ortho = (this.max_speed - starting_orthogonal_velocity) / accel * 2;
        if (seconds >= time_to_ortho) {
            // divided in half because the missile will need to cover half the ground in a direction parallel to its current vector
            const distance_during_ortho = (1/2 * accel * time_to_ortho * time_to_ortho)/2;
            return distance_during_ortho + (seconds - time_to_ortho) * this.max_speed;
        } else {
            const distance = (1/2 * accel * seconds * seconds)/2
            return distance;
        }
    }

    cross_section_area(percent = 1) {
        const head = this.collider.head_on_cross_section;
        const side = this.collider.side_on_cross_section;
        return (side - head) * percent + head;
    }

    clone() {
        return new Missile(this.name, this.acceleration, this.turn_acceleration, this.max_speed, this.health, this.collider.clone());
    }
}

class Collider {
    constructor(height, radius) {
        this.height = height;   // meters
        this.radius = radius;   // meters
    }

    clone() {
        return new Collider(this.height, this.radius);
    }

    get head_on_cross_section() {
        return Math.PI * this.radius * this.radius;
    }

    get side_on_cross_section() {
        const capsule = Math.PI * this.radius * this.radius;
        return this.height * this.radius * 2 + capsule;
    }
}

const s1_balestra = new Missile(
    "SGM-1 Balestra",
    76.5,
    6,
    350,
    10,
    new Collider(5.1, 0.5)
)

const s2_tempest = new Missile(
    "SGM-2 Tempest",
    20.5,
    3.5,
    220,
    30,
    new Collider( 6.4, 0.3)
);

const s2h_cyclone_cruise = new Missile(
    "SGMH-2 Cyclone (Cruise)",
    8.7,
    1,
    300,
    20,
    new Collider(6.4, 0.4)
);

const s2h_cyclone_sprint = new Missile(
    "SGMH-2 Cyclone (Sprint)",
    71.4,
    6,
    500,
    20,
    new Collider(6.4, 0.4)
)

const s3_pilum = new Missile(
    "SGT-3 Pilum",
    7.1,
    3.5,
    150,
    110,
    new Collider(10.87418, 0.9)
);

const s3h_atlatl_cruise = new Missile(
    "SGMH-3 Atlatl (Cruise)",
    7.1,
    1.3,
    150,
    60,
    new Collider(10.3, 0.8)
);

const s3h_atlatl_sprint = new Missile(
    "SGMH-3 Atlatl (Sprint)",
    61.2,
    9.8,
    1000,
    60,
    new Collider(10.3, 0.8)
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

export class CustomizationDB {
    static make_templates(named_objects) {
        const ret = {};
        for (const o of named_objects) {
            ret[o.name] = o;
        }
        return ret;
    }

    constructor(templates) {
        this.customizations = {};
        this.templates = templates;
        this.items = {};
    }

    new_item(item_name) {
        const new_id = crypto.randomUUID();
        this.items[new_id] = this.templates[item_name].clone();
        this.customize(new_id, { id: new_id });
    }

    remove(key) {
        delete this.items[key];
        delete this.customizations[key];
    }

    customize(key, customization) {
        if (this.customizations.hasOwnProperty(key)) {
            Object.assign(this.customizations[key], customization);
        } else {
            this.customizations[key] = customization;
        }
    }

    fetch_all() {
        return Object.keys(this.items).sort().map(this.fetch, this);
    }

    fetch(key) {
        if (this.customizations.hasOwnProperty(key) && this.items.hasOwnProperty(key)) {
            return Object.assign(this.items[key].clone(), this.customizations[key]);
        }
        if (this.items.hasOwnProperty(key)) {
            return this.items[key].clone();
        }
        return null;
    }

    reset() {
        this.items = {};
        this.customizations = {};
    }
}
