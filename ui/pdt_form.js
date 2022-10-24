export default function pdt_form(key, pdt, missiles) {
    const form = document.createElement("form");
    form.action = "#";
    form.id = key;
    form.classList.add("inputs-form", "pdt-form");

    const rof_input = document.createElement("input");
    rof_input.type = "checkbox";
    rof_input.name = "rof-switch";
    const rof_label = document.createElement("label");
    rof_label.textContent = "Use Burst Fire Rate";
    rof_label.for = rof_input.name;

    const header = document.createElement("h2");
    header.textContent = pdt.name;

    form.appendChild(header);
    var div = document.createElement("div");
    div.classList.add("control-group");
    div.appendChild(rof_label);
    div.appendChild(rof_input);
    form.appendChild(div);

    for (const missile of missiles) {
        const shots_input = document.createElement("span");
        shots_input.textContent = pdt.primary_ammo.shots_to_kill(missile).toString();
        const shots_label = document.createElement("label");
        shots_label.textContent = "Shots to Kill (" + missile.name + ")";
        const div = document.createElement("div");
        div.classList.add("control-group");
        div.appendChild(shots_label);
        div.appendChild(shots_input);
        form.appendChild(div);
    }

    rof_input.checked = pdt.use_burst_rof;

    return form;
}
