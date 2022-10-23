export function populate_inputs(missile, pdt, grapher) {
    const missile_form = document.getElementById("missile-form");
    const acceleration = missile_form.elements.namedItem("acceleration");
    const turn_acceleration = missile_form.elements.namedItem("turn-acceleration");
    const max_speed = missile_form.elements.namedItem("max-speed");
    const health = missile_form.elements.namedItem("health");

    acceleration.value = Math.round(missile.acceleration * 10)/10;
    turn_acceleration.value = Math.round(missile.turn_acceleration * 10)/10;
    max_speed.value = Math.round(missile.max_speed);
    health.value = Math.round(missile.health);

    const pdt_form = document.getElementById("pdt-form");
    const rof_switch = pdt_form.elements.namedItem("rof-switch");
    rof_switch.checked = pdt.use_burst_rof;

    const regraph = () => {
        missile.acceleration = parseFloat(acceleration.value);
        missile.turn_acceleration = parseFloat(turn_acceleration.value);
        missile.max_speed = parseInt(max_speed.value, 10);
        missile.health = parseInt(health.value, 10);
        pdt.use_burst_rof = rof_switch.checked;
        grapher(missile, pdt);
    };

    missile_form.onsubmit = (e) => {
        e.preventDefault();
        e.stopPropagation();
        regraph();
    };
    pdt_form.onsubmit = (e) => {
        e.preventDefault();
        e.stopPropagation();
        regraph();
    };
}

export function inputs(missiles, point_defenses, grapher) {
    const form = document.getElementById("inputs-form");
    const missile_in = form.elements.namedItem("missile"); // html select
    const pdt_in = form.elements.namedItem("pdt"); // html select
    for(const missile of Object.values(missiles)) {
        if(missile.name !== null && missile.name !== undefined) {
            const o = new Option(missile.name, missile.name);
            missile_in.add(o);
        }
    }
    for(const pdt of Object.values(point_defenses)) {
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
        const pdt = Object.values(point_defenses).find((t) => t.name === pdt_name);
        populate_inputs(missile, pdt, grapher);
        grapher(missile, pdt);
    }
}