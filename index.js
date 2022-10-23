import { missiles, point_defense } from "./data.js";

const final_shot_distance_travelled = (weapon, ammo, missile, range, shots) => {
    // starting range - range travelled while firing shots to kill - range travelled while last round is travelling
    // rounds / second * 1 / rounds (invert)
    const travelled_during_firing = missile.distance_travelled(weapon.seconds_to_fire(shots));
    const range_after_firing = range - travelled_during_firing;
    // missile travels while round is travelling
    // m -- | ---------- r
    // m ---------- | -- r
    // relative_v = v_m + v_r
    // t = range / relative_v
    const relative_velocity = missile.closing_velocity(ammo);
    const time_to_intercept = range_after_firing / relative_velocity;
    const intercept = missile.distance_travelled(time_to_intercept);
    const intercept_range = range_after_firing - missile.distance_travelled(time_to_intercept);
    if (range % 100 == 0) {
        const sample = {
            weapon,
            ammo,
            missile,
            range,
            shots,
            speed: missile.max_speed,
            rof: weapon.rof,
            ammo_velocity: ammo.velocity,
            rof_per_second: weapon.rof_per_second,
            time_to_fire: weapon.seconds_to_fire(shots),
            travelled_during_firing,
            range_after_firing,
            intercept,
            intercept_range,
            time_to_intercept,
            relative_velocity,
        };
        console.log("Sample: ", sample);
    }
    return intercept_range;
};

function do_graph(chosen_missile, chosen_pd) {
    const chosen_ammo = chosen_pd.primary_ammo;
    const interval = 10; //m
    const data = {};
    const shots = chosen_ammo.shots_to_kill(chosen_missile);
    for(const range of chosen_ammo.ranges(interval)) {
        const y = final_shot_distance_travelled(chosen_pd, chosen_ammo, chosen_missile, range, shots);
        data[y] = range;
    }
    const graph = document.getElementById('graph');
    Plotly.newPlot( graph, [{
        x: Object.values(data),
        y: Object.keys(data),
      }],
      {
        margin: { t: 0 },
        xaxis: { title: "Encounter Range (m)" },
        yaxis: { title: "Kill Range (m)" },
      }
    );
}

function populate_inputs(missile, pdt) {
    const missile_form = document.getElementById("missile-form");
    const acceleration = missile_form.elements.namedItem("acceleration");
    const turn_acceleration = missile_form.elements.namedItem("turn-acceleration");
    const max_speed = missile_form.elements.namedItem("max-speed");
    const health = missile_form.elements.namedItem("health");

    acceleration.value = Math.round(missile.acceleration * 10)/10;
    turn_acceleration.value = Math.round(missile.turn_acceleration * 10)/10;
    max_speed.value = Math.round(missile.max_speed);
    health.value = Math.round(missile.health);

    missile_form.onsubmit = (e) => {
        e.preventDefault();
        e.stopPropagation();
        missile.acceleration = acceleration.value;
        missile.turn_acceleration = turn_acceleration.value;
        missile.max_speed = max_speed.value;
        missile.health = health.value;
        do_graph(missile, pdt);
    }
}

function inputs() {
    const form = document.getElementById("inputs-form");
    const missile_in = form.elements.namedItem("missile"); // html select
    const pdt_in = form.elements.namedItem("pdt"); // html select
    for(const missile of Object.values(missiles)) {
        if(missile.name !== null && missile.name !== undefined) {
            const o = new Option(missile.name, missile.name);
            missile_in.add(o);
        }
    }
    for(const pdt of Object.values(point_defense)) {
        if(pdt.name !== null && pdt.name !== undefined) {
            const o = new Option(pdt.name, pdt.name);
            pdt_in.add(o);
        }
    }
    missile_in.selectedIndex = 0;
    pdt_in.selectedIndex = 0;
    form.onsubmit = (e) => {
        e.stopPropagation();
        e.preventDefault();
        const missile_name = missile_in.value;
        const missile = Object.values(missiles).find((m) => m.name === missile_name);
        const pdt_name = pdt_in.value;
        const pdt = Object.values(point_defense).find((t) => t.name === pdt_name);
        populate_inputs(missile, pdt);
        do_graph(missile, pdt);
    }
}

inputs();