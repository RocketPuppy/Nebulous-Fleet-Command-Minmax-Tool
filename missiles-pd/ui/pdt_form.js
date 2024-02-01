export default function pdt_form(pdt_db, graph_form, key, pdt, missiles, index) {
    const form = document.createElement("form");
    form.action = "#";
    form.id = key;
    form.classList.add("inputs-form", "pdt-form");

    const rof_input = document.createElement("input");
    rof_input.type = "checkbox";
    rof_input.name = "rof-switch";
    const rof_label = document.createElement("legend");
    rof_label.textContent = "Use Burst Fire Rate";
    rof_label.for = rof_input.name;

    const mv_input = document.createElement("input");
    mv_input.type = "number";
    mv_input.step = 10;
    mv_input.name = "muzzle-velocity";
    mv_input.value = pdt.primary_ammo.velocity;
    const mv_label = document.createElement("legend");
    mv_label.textContent = "Muzzle Velocity (m/s)";
    mv_label.for = mv_input.name;

    const acc_input = document.createElement("input");
    acc_input.type = "number";
    acc_input.step = 1;
    acc_input.min = 0;
    acc_input.name = "accuracy-modifier";
    acc_input.value = pdt.accuracy_modifier;
    const acc_label = document.createElement("legend");
    acc_label.textContent = "Accuracy Scaling Factor (%)";
    acc_label.for = acc_input.name;

    const submit_input = document.createElement("input");
    submit_input.type = "submit";
    submit_input.value = "Update PD";

    const remove = document.createElement("button");
    remove.textContent = "Remove PD";

    const header = document.createElement("h2");
    header.textContent = pdt.name;
    if (index !== "") {
        header.textContent = header.textContent + "(" + index + ")";
    }

    form.appendChild(header);
    var fieldset = document.createElement("fieldset");
    fieldset.classList.add("control-group");
    fieldset.appendChild(rof_label);
    fieldset.appendChild(rof_input);
    form.appendChild(fieldset);

    var fieldset = document.createElement("fieldset");
    fieldset.classList.add("control-group");
    fieldset.appendChild(mv_label);
    fieldset.appendChild(mv_input);
    form.appendChild(fieldset);

    var fieldset = document.createElement("fieldset");
    fieldset.classList.add("control-group");
    fieldset.appendChild(acc_label);
    fieldset.appendChild(acc_input);
    form.appendChild(fieldset);

    for (const missile of missiles) {
        const shots_input = document.createElement("span");
        shots_input.textContent = pdt.primary_ammo.shots_to_kill(missile).toString();
        const shots_label = document.createElement("legend");
        shots_label.textContent = "Shots to Kill (" + missile.name + ")";
        const fieldset = document.createElement("fieldset");
        fieldset.classList.add("control-group");
        fieldset.appendChild(shots_label);
        fieldset.appendChild(shots_input);
        form.appendChild(fieldset);
    }

    var div = document.createElement("div");
    div.classList.add("control-group");
    div.appendChild(submit_input);
    div.appendChild(remove);
    form.appendChild(div);

    rof_input.checked = pdt.use_burst_rof;

    form.onsubmit = (e) => {
        e.preventDefault();
        e.stopPropagation();

        pdt_db.customize(key, { use_burst_rof: rof_input.checked, muzzle_velocity: parseInt(mv_input.value, 10), accuracy_modifier: parseInt(acc_input.value, 10) });
        graph_form.dispatchEvent(new SubmitEvent("submit", { cancelable: true }));
    };

    remove.onclick = (e) => {
        e.preventDefault();
        e.stopPropagation();

        pdt_db.remove(key);
        graph_form.dispatchEvent(new SubmitEvent("submit", { cancelable: true }));
    }

    return form;
}
