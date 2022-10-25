import { CustomizationDB, SelectionDB } from "./data.js";
import missile_form from "./ui/missile_form.js";
import pdt_form from "./ui/pdt_form.js";

export function populate_inputs(missile_db, pdt_db, graph_form) {
    const missile_input_container = document.getElementById("missile-inputs");
    const missiles = missile_db.fetch();
    const pdts = pdt_db.fetch();

    // clear inputs
    while (missile_input_container.firstChild) {
        missile_input_container.removeChild(missile_input_container.firstChild);
    }

    missiles.forEach((missile) => {
        missile_input_container.appendChild(missile_form(missile_db, graph_form, missile.id, missile));
    });

    const pdt_input_container = document.getElementById("pdt-inputs");

    //clear inputs
    while (pdt_input_container.firstChild) {
        pdt_input_container.removeChild(pdt_input_container.firstChild);
    }

    pdts.forEach((pdt) => {
        pdt_input_container.appendChild(pdt_form(pdt_db, graph_form, pdt.id, pdt, missiles));
    });
}

export function inputs(missiles, point_defenses, grapher) {
    const graph_form = document.getElementById("graph-inputs");

    const add_missile_btn = graph_form.elements.namedItem("add-missile");
    const add_pdt_btn = graph_form.elements.namedItem("add-pdt");

    const missile_db = new CustomizationDB(missiles);
    const pdt_db = new CustomizationDB(point_defenses);

    add_missile_btn.onclick = (e) => {
        e.preventDefault();
        e.stopPropagation();
        const missile_in = graph_form.elements.namedItem("missile"); // html select
        missile_db.new_item(missile_in.value);
    };

    add_pdt_btn.onclick = (e) => {
        e.preventDefault();
        e.stopPropagation();
        const pdt_in = graph_form.elements.namedItem("pdt"); // html select
        pdt_db.new_item(pdt_in.value);
    };

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

    graph_form.onsubmit = (e) => {
        e.stopPropagation();
        e.preventDefault();

        const missiles = missile_db.fetch();
        const pdts = pdt_db.fetch();

        populate_inputs(missile_db, pdt_db, graph_form);
        grapher(missiles, pdts);
    }

    graph_form.elements.namedItem("reset").onclick = (e) => {
        e.stopPropagation();
        e.preventDefault();

        missile_db.reset();
        pdt_db.reset();

        graph_form.dispatchEvent(new SubmitEvent("submit"));
    }
}
