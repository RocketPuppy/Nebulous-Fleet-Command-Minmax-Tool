import { SelectionDB } from "./data.js";

export function populate_inputs(missile, pdt) {
    const form = document.getElementById("inputs");
    const acceleration = form.elements.namedItem("acceleration");
    const turn_acceleration = form.elements.namedItem("turn-acceleration");
    const max_speed = form.elements.namedItem("max-speed");
    const health = form.elements.namedItem("health");

    acceleration.value = Math.round(missile.acceleration * 10)/10;
    turn_acceleration.value = Math.round(missile.turn_acceleration * 10)/10;
    max_speed.value = Math.round(missile.max_speed);
    health.value = Math.round(missile.health);

    const rof_switch = form.elements.namedItem("rof-switch");
    rof_switch.checked = pdt.use_burst_rof;
}

export function inputs(missiles, point_defenses, grapher) {
    const form = document.getElementById("inputs");
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

    const missile_db = new SelectionDB(Object.values(missiles));
    const pdt_db = new SelectionDB(Object.values(point_defenses));

    form.onsubmit = (e) => {
        e.stopPropagation();
        e.preventDefault();

        const selected_missiles = Array.from(missile_in.selectedOptions).map((o) => o.value);
        const selected_pdt = Array.from(pdt_in.selectedOptions).map((o) => o.value);

        selected_missiles.forEach((name) => {
            if (missile_db.is_selected(name)) {
                missile_db.customize(name, {
                    acceleration: parseFloat(form.elements.namedItem("acceleration").value),
                    turn_acceleration: parseFloat(form.elements.namedItem("turn-acceleration").value),
                    max_speed: parseInt(form.elements.namedItem("max-speed").value, 10),
                    health: parseInt(form.elements.namedItem("health").value, 10)
                });
            }   
        });

        selected_pdt.forEach((name) => {
            if (pdt_db.is_selected(name)) {
                pdt_db.customize(name, {
                    use_burst_rof: form.elements.namedItem("rof-switch").checked
                });
            }
        });

        missile_db.select(selected_missiles);
        pdt_db.select(selected_pdt);

        const missile = missile_db.first_selected;
        const pdt = pdt_db.first_selected;

        populate_inputs(missile, pdt);
        grapher(missile, pdt);
    }

    form.elements.namedItem("reset").onclick = (e) => {
        e.stopPropagation();
        e.preventDefault();

        missile_db.reset_selected();
        pdt_db.reset_selected();

        form.dispatchEvent(new SubmitEvent("submit"));
    }
}