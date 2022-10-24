import { SelectionDB } from "./data.js";
import missile_form from "./ui/missile_form.js";
import pdt_form from "./ui/pdt_form.js";

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
        pdt_input_container.appendChild(pdt_form(pdt.name, pdt, missiles));
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
