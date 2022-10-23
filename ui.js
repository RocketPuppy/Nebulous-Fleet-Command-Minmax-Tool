import { SelectionDB } from "./data.js";

function missile_form(key, missile) {
    const form = document.createElement("form");
    form.action = "#";
    form.id = key;
    form.classList.add("inputs-form", "missile-form");

    const accel_input = document.createElement("input");
    accel_input.type = "number";
    accel_input.step = "0.1";
    accel_input.name = "acceleration";
    const accel_label = document.createElement("label");
    accel_label.textContent = "Acceleration (G)";
    accel_label.appendChild(accel_input);

    const turn_accel_input = document.createElement("input");
    turn_accel_input.type = "number";
    turn_accel_input.step = "0.1";
    turn_accel_input.name = "turn-acceleration";
    const turn_accel_label = document.createElement("label");
    turn_accel_label.textContent = "Turn Acceleration (G)";
    turn_accel_label.appendChild(turn_accel_input);

    const speed_input = document.createElement("input");
    speed_input.type = "number";
    speed_input.name = "max-speed";
    const speed_label = document.createElement("label");
    speed_label.textContent = "Maximum Velocity (m/s)";
    speed_label.appendChild(speed_input);

    const health_input = document.createElement("input");
    health_input.type = "number";
    health_input.name = "health";
    const health_label = document.createElement("label");
    health_label.textContent = "Health";
    health_label.appendChild(health_input);

    const header = document.createElement("h2");
    header.textContent = missile.name;

    form.appendChild(header);
    form.appendChild(accel_label);
    form.appendChild(turn_accel_label);
    form.appendChild(speed_label);
    form.appendChild(health_label);

    accel_input.value = Math.round(missile.acceleration * 10)/10;
    turn_accel_input.value = Math.round(missile.turn_acceleration * 10)/10;
    speed_input.value = Math.round(missile.max_speed);
    health_input.value = Math.round(missile.health);

    return form;
}

function pdt_form(key, pdt) {
    const form = document.createElement("form");
    form.action = "#";
    form.id = key;
    form.classList.add("inputs-form", "pdt-form");

    const rof_input = document.createElement("input");
    rof_input.type = "checkbox";
    rof_input.name = "rof-switch";
    const rof_label = document.createElement("label");
    rof_label.textContent = "Use Burst Fire Rate";
    rof_label.appendChild(rof_input);

    const header = document.createElement("h2");
    header.textContent = pdt.name;

    form.appendChild(header);
    form.appendChild(rof_label);

    rof_input.checked = pdt.use_burst_rof;

    return form;
}

export function populate_inputs(missiles, pdts) {
    const missile_input_container = document.getElementById("missile-inputs");
    
    // clear inputs
    while (missile_input_container.firstChild) {
        missile_input_container.removeChild(missile_input_container.firstChild);
    }

    missiles.forEach((missile) => {
        missile_input_container.appendChild(missile_form(missile.name, missile));
    });

    const pdt_input_container = document.getElementById("pdt-inputs");

    //clear inputs
    while (pdt_input_container.firstChild) {
        pdt_input_container.removeChild(pdt_input_container.firstChild);
    }

    pdts.forEach((pdt) => {
        pdt_input_container.appendChild(pdt_form(pdt.name, pdt));
    });
}

export function inputs(missiles, point_defenses, grapher) {
    const graph_form = document.getElementById("graph-inputs");
    const missile_in = graph_form.elements.namedItem("missile"); // html select
    const pdt_in = graph_form.elements.namedItem("pdt"); // html select
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

    graph_form.onsubmit = (e) => {
        e.stopPropagation();
        e.preventDefault();

        const selected_missiles = Array.from(missile_in.selectedOptions).map((o) => o.value);
        const selected_pdt = Array.from(pdt_in.selectedOptions).map((o) => o.value);

        selected_missiles.forEach((name) => {
            if (missile_db.is_selected(name)) {
                const form = document.getElementById(name);
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
                const form = document.getElementById(name);
                pdt_db.customize(name, {
                    use_burst_rof: form.elements.namedItem("rof-switch").checked
                });
            }
        });

        missile_db.select(selected_missiles);
        pdt_db.select(selected_pdt);

        const missiles = missile_db.selected;
        const pdts = pdt_db.selected;

        populate_inputs(missiles, pdts);
        grapher(missiles, pdts);
    }

    graph_form.elements.namedItem("reset").onclick = (e) => {
        e.stopPropagation();
        e.preventDefault();

        missile_db.reset_selected();
        pdt_db.reset_selected();

        graph_form.dispatchEvent(new SubmitEvent("submit"));
    }
}