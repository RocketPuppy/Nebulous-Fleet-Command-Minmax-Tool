export default function missile_form(missile_db, graph_form, key, missile, index) {
    const form = document.createElement("form");
    form.action = "#";
    form.id = key;
    form.classList.add("inputs-form", "missile-form");

    const accel_input = document.createElement("input");
    accel_input.type = "number";
    accel_input.step = "0.1";
    accel_input.name = "acceleration";
    const accel_label = document.createElement("legend");
    accel_label.textContent = "Acceleration (G)";
    accel_label.for = accel_input.name;

    const turn_accel_input = document.createElement("input");
    turn_accel_input.type = "number";
    turn_accel_input.step = "0.1";
    turn_accel_input.name = "turn-acceleration";
    const turn_accel_label = document.createElement("legend");
    turn_accel_label.textContent = "Turn Acceleration (G)";
    turn_accel_label.for = turn_accel_input.name;

    const speed_input = document.createElement("input");
    speed_input.type = "number";
    speed_input.name = "max-speed";
    const speed_label = document.createElement("legend");
    speed_label.textContent = "Maximum Velocity (m/s)";
    speed_label.for = speed_input.name;

    const health_input = document.createElement("input");
    health_input.type = "number";
    health_input.name = "health";
    const health_label = document.createElement("legend");
    health_label.textContent = "Health";
    health_label.for = health_label.name;

    const cross_section_input = document.createElement("input");
    cross_section_input.type = "range";
    cross_section_input.name = "cross-section-percent";
    cross_section_input.min = 0;
    cross_section_input.max = 1;
    cross_section_input.step = 0.01;
    const cross_section_label = document.createElement("legend");
    cross_section_label.innerHTML = "Approach Angle<br/>Head-on to Side-on";
    cross_section_label.for = cross_section_input.name;
    const maneuvering_strength_input = document.createElement("input");
    maneuvering_strength_input.type = "range";
    maneuvering_strength_input.name = "maneuver-strength-percent";
    maneuvering_strength_input.min = 0;
    maneuvering_strength_input.max = 1;
    maneuvering_strength_input.step = 0.01;
    const maneuvering_strength_label = document.createElement("legend");
    maneuvering_strength_label.innerHTML = "Maneuvering Strength<br/>None to Full";
    maneuvering_strength_label.for = maneuvering_strength_input.name;
    const orthogonal_speed_input = document.createElement("input");
    orthogonal_speed_input.type = "range";
    orthogonal_speed_input.name = "orthoganal-speed-percent";
    orthogonal_speed_input.min = 0;
    orthogonal_speed_input.max = 1;
    orthogonal_speed_input.step = 0.01;
    const orthogonal_speed_label = document.createElement("legend");
    orthogonal_speed_label.innerHTML = "Initial Transverse Velocity<br/>None to Max";
    orthogonal_speed_label.for = orthogonal_speed_input.name;

    const submit = document.createElement("input");
    submit.type = "submit";
    submit.value = "Update Missile";

    const remove = document.createElement("button");
    remove.textContent = "Remove Missile";

    const header = document.createElement("h2");
    header.textContent = missile.name;
    if (index !== "") {
        header.textContent = header.textContent + "(" + index + ")";
    }

    form.appendChild(header);
    var fieldset = document.createElement("fieldset");
    fieldset.classList.add("control-group");
    fieldset.appendChild(accel_label);
    fieldset.appendChild(accel_input);
    form.appendChild(fieldset);
    fieldset = document.createElement("fieldset");
    fieldset.classList.add("control-group");
    fieldset.appendChild(turn_accel_label);
    fieldset.appendChild(turn_accel_input);
    form.appendChild(fieldset);
    fieldset = document.createElement("fieldset");
    fieldset.classList.add("control-group");
    fieldset.appendChild(speed_label);
    fieldset.appendChild(speed_input);
    form.appendChild(fieldset);
    fieldset = document.createElement("fieldset");
    fieldset.classList.add("control-group");
    fieldset.appendChild(health_label);
    fieldset.appendChild(health_input);
    form.appendChild(fieldset);
    fieldset = document.createElement("fieldset");
    fieldset.classList.add("control-group");
    fieldset.appendChild(cross_section_label);
    fieldset.appendChild(cross_section_input);
    form.appendChild(fieldset);
    fieldset = document.createElement("fieldset");
    fieldset.classList.add("control-group");
    fieldset.appendChild(maneuvering_strength_label);
    fieldset.appendChild(maneuvering_strength_input);
    form.appendChild(fieldset);
    fieldset = document.createElement("fieldset");
    fieldset.classList.add("control-group");
    fieldset.appendChild(orthogonal_speed_label);
    fieldset.appendChild(orthogonal_speed_input);
    form.appendChild(fieldset);
    var div = document.createElement("div");
    div.classList.add("control-group");
    div.appendChild(submit);
    div.appendChild(remove);
    form.appendChild(div);

    accel_input.value = Math.round(missile.acceleration * 10)/10;
    turn_accel_input.value = Math.round(missile.turn_acceleration * 10)/10;
    speed_input.value = Math.round(missile.max_speed);
    health_input.value = Math.round(missile.health);
    cross_section_input.value = missile.cross_section_percent === null || missile.cross_section_percent === undefined ? 1 : Math.round(missile.cross_section_percent * 10) / 10;
    maneuvering_strength_input.value = missile.maneuvering_strength === null || missile.maneuvering_strength === undefined ? 1 : Math.round(missile.maneuvering_strength * 10) / 10;
    orthogonal_speed_input.value = missile.orthogonal_speed === null || missile.orthogonal_speed === undefined ? 0 : Math.round(missile.orthogonal_speed * 10) / 10;

    form.onsubmit = (e) => {
        e.preventDefault();
        e.stopPropagation();

        missile_db.customize(key, {
            acceleration: parseFloat(accel_input.value),
            turn_acceleration: parseFloat(turn_accel_input.value),
            max_speed: parseInt(speed_input.value, 10),
            health: parseInt(health_input.value, 10),
            cross_section_percent: parseFloat(cross_section_input.value),
            maneuvering_strength: parseFloat(maneuvering_strength_input.value),
            orthogonal_speed: parseFloat(orthogonal_speed_input.value),
        });
        graph_form.dispatchEvent(new SubmitEvent("submit", { cancelable: true }));
    };

    remove.onclick = (e) => {
        e.preventDefault();
        e.stopPropagation();

        missile_db.remove(key);
        graph_form.dispatchEvent(new SubmitEvent("submit", { cancelable: true }));
    }

    return form;
}