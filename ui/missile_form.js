export default function missile_form(missile_db, graph_form, key, missile) {
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
    accel_label.for = accel_input.name;

    const turn_accel_input = document.createElement("input");
    turn_accel_input.type = "number";
    turn_accel_input.step = "0.1";
    turn_accel_input.name = "turn-acceleration";
    const turn_accel_label = document.createElement("label");
    turn_accel_label.textContent = "Turn Acceleration (G)";
    turn_accel_label.for = turn_accel_input.name;

    const speed_input = document.createElement("input");
    speed_input.type = "number";
    speed_input.name = "max-speed";
    const speed_label = document.createElement("label");
    speed_label.textContent = "Maximum Velocity (m/s)";
    speed_label.for = speed_input.name;

    const health_input = document.createElement("input");
    health_input.type = "number";
    health_input.name = "health";
    const health_label = document.createElement("label");
    health_label.textContent = "Health";
    health_label.for = health_label.name;

    const submit = document.createElement("button");
    submit.type = "submit";
    submit.value = "Update Missile";

    const header = document.createElement("h2");
    header.textContent = missile.name;

    form.appendChild(header);
    var div = document.createElement("div");
    div.classList.add("control-group");
    div.appendChild(accel_label);
    div.appendChild(accel_input);
    form.appendChild(div);
    div = document.createElement("div");
    div.classList.add("control-group");
    div.appendChild(turn_accel_label);
    div.appendChild(turn_accel_input);
    form.appendChild(div);
    div = document.createElement("div");
    div.classList.add("control-group");
    div.appendChild(speed_label);
    div.appendChild(speed_input);
    form.appendChild(div);
    div = document.createElement("div");
    div.classList.add("control-group");
    div.appendChild(health_label);
    div.appendChild(health_input);
    form.appendChild(div);
    div = document.createElement("div");
    div.classList.add("control-group");
    div.appendChild(submit);
    form.appendChild(div);

    accel_input.value = Math.round(missile.acceleration * 10)/10;
    turn_accel_input.value = Math.round(missile.turn_acceleration * 10)/10;
    speed_input.value = Math.round(missile.max_speed);
    health_input.value = Math.round(missile.health);

    form.onsubmit = (e) => {
        e.preventDefault();
        e.stopPropagation();

        missile_db.customize(key, {
            acceleration: parseFloat(accel_input.value),
            turn_acceleration: parseFloat(turn_accel_input.value),
            max_speed: parseInt(speed_input.value, 10),
            health: parseInt(health_input.value, 10),
        });
        graph_form.dispatchEvent(new SubmitEvent("submit"));
    };

    return form;
}
