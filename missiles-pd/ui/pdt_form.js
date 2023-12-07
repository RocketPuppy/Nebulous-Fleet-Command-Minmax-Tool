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

    pdt_db.customize(key, { use_burst_rof: rof_input.checked });
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
