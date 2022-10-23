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

    missile_form.onsubmit = (e) => {
        e.preventDefault();
        e.stopPropagation();
        missile.acceleration = acceleration.value;
        missile.turn_acceleration = turn_acceleration.value;
        missile.max_speed = max_speed.value;
        missile.health = health.value;
        grapher(missile, pdt);
    }
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