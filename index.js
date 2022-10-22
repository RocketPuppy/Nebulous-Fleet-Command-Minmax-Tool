import { missiles, point_defense } from "./data.js";

const shots_to_kill = (missile, ammo) => {
    return Math.ceil(missile.health / ammo.component_damage);
};

const final_shot_distance_travelled = (weapon, ammo, missile, range, shots) => {
    const speed = missile.max_speed;
    const rof = weapon.rof;
    const ammo_velocity = ammo.velocity;

    // rounds / minute * 1 minute / 60 seconds
    const rof_per_second = rof / 60;
    // starting range - range travelled while firing shots to kill - range travelled while last round is travelling
    // rounds / second * 1 / rounds (invert)
    const time_to_fire = 1/(rof_per_second * 1 / shots);
    const travelled_during_firing = time_to_fire * speed;
    const range_after_firing = range - travelled_during_firing;
    // missile travels while round is travelling
    // m -- | ---------- r
    // m ---------- | -- r
    // relative_v = v_m + v_r
    // t = range / relative_v
    const relative_velocity = ammo_velocity + speed;
    const time_to_intercept = range_after_firing / relative_velocity;
    const intercept = time_to_intercept * speed;
    const intercept_range = range_after_firing - (time_to_intercept * speed);
    if (range % 100 == 0) {
        const sample = {
            weapon,
            ammo,
            missile,
            range,
            shots,
            speed,
            rof,
            ammo_velocity,
            rof_per_second,
            time_to_fire,
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
    const chosen_ammo = chosen_pd.ammunition[0];
    const interval = 10; //m
    const data = {};
    const shots = shots_to_kill(chosen_missile, chosen_ammo);
    for(var range = chosen_ammo.max_range; range >= 0; range -= interval) {
        if (range < 0) {
            break;
        }
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
        do_graph(missile, pdt);
    }
}
inputs();