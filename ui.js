import { CustomizationDB } from "./data.js";
import missile_form from "./ui/missile_form.js";
import pdt_form from "./ui/pdt_form.js";
import * as stats from "./stats.js";

export function populate_inputs(missile_db, pdt_db, graph_form) {
    const missile_input_container = document.getElementById("missile-inputs");
    const missiles = missile_db.fetch_all();
    const pdts = pdt_db.fetch_all();

    // clear inputs
    while (missile_input_container.firstChild) {
        missile_input_container.removeChild(missile_input_container.firstChild);
    }

    missiles.forEach((missile, index) => {
        if(missiles.length === 1) {
            index = "";
        } else {
            index++;
        }
        missile_input_container.appendChild(missile_form(missile_db, graph_form, missile.id, missile, index.toString()));
    });

    const pdt_input_container = document.getElementById("pdt-inputs");

    //clear inputs
    while (pdt_input_container.firstChild) {
        pdt_input_container.removeChild(pdt_input_container.firstChild);
    }

    pdts.forEach((pdt, index) => {
        if(pdts.length === 1) {
            index = "";
        } else {
            index++;
        }
        pdt_input_container.appendChild(pdt_form(pdt_db, graph_form, pdt.id, pdt, missiles, index.toString()));
    });
}

export function inputs(missiles, point_defenses, grapher) {
    const graph_form = document.getElementById("graph-inputs");

    const add_missile_btn = graph_form.elements.namedItem("add-missile");
    const add_pdt_btn = graph_form.elements.namedItem("add-pdt");
    const add_stat_btn = graph_form.elements.namedItem("add-stat");

    const missile_db = new CustomizationDB(CustomizationDB.make_templates(Object.values(missiles)));
    const pdt_db = new CustomizationDB(CustomizationDB.make_templates(Object.values(point_defenses)));

    add_missile_btn.onclick = (e) => {
        e.preventDefault();
        e.stopPropagation();
        const missile_in = graph_form.elements.namedItem("missile"); // html select
        missile_db.new_item(missile_in.value);
        graph_form.dispatchEvent(new SubmitEvent("submit"));
    };

    add_pdt_btn.onclick = (e) => {
        e.preventDefault();
        e.stopPropagation();
        const pdt_in = graph_form.elements.namedItem("pdt"); // html select
        pdt_db.new_item(pdt_in.value);
        graph_form.dispatchEvent(new SubmitEvent("submit"));
    };
    add_stat_btn.onclick = (e) => {
        e.preventDefault();
        e.stopPropagation();
        const stats_in = graph_form.elements.namedItem("stat"); //html select
        selected_stat = stats_in.value;
        graph_form.dispatchEvent(new SubmitEvent("submit"));
    }

    const missile_in = graph_form.elements.namedItem("missile"); // html select
    const pdt_in = graph_form.elements.namedItem("pdt"); // html select
    const stats_in = graph_form.elements.namedItem("stat"); //html select
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
    for (const stat in stats) {
        if (Object.hasOwnProperty.call(stats, stat)) {
            const s = stats[stat];
            const o = new Option(s.human_name, stat);
            stats_in.add(o);
        }
    }
    missile_in.selectedIndex = 0;
    pdt_in.selectedIndex = 0;
    stats_in.selectedIndex = 0;
    var selected_stat = stats_in.value;

    graph_form.onsubmit = (e) => {
        e.stopPropagation();
        e.preventDefault();

        const missiles = missile_db.fetch_all();
        const pdts = pdt_db.fetch_all();

        populate_inputs(missile_db, pdt_db, graph_form);

        if (missiles.length !== 0 && pdts.length !== 0) {
            grapher(missiles, pdts, stats[selected_stat]);
        } else {
            const graph = document.getElementById('graph');
            Plotly.purge(graph);
        }
    }

    graph_form.elements.namedItem("reset").onclick = (e) => {
        e.stopPropagation();
        e.preventDefault();

        missile_db.reset();
        pdt_db.reset();

        graph_form.dispatchEvent(new SubmitEvent("submit"));
    }
}
