import hullStats from "../hull-stats.js";
import gunStats from "../gun-stats.js";
import Gun from "./gun.js";
import Ship from "./ship.js";

/*
1. Assume gun has perfect tracking (you are locked)
2. Gun fires, bullet travels, how long do you have to move?
3. How big is your ship? How far do you need to move to get your ship out of line?
4. When do you need to start moving?
*/

function start_moving_before(gun_range, gun, ship, margin) {
    const bullet_time = gun.travel_time(gun_range);
    const needed_displacement = ship.minimum_dimension * (0.5 * margin); // aiming at center-mass plus 25% margin
    const time_to_move = Math.sqrt(2 * needed_displacement / ship.acceleration);
    const start_moving_before = bullet_time - time_to_move;
    return start_moving_before;
    
}

const margins = [1, 1.25, 1.5];
function make_trace(gun, ship, margin) {
    const x = [];
    const y = [];
    for(const range of gun.ranges(100)) {
        x.push(range);
        y.push(start_moving_before(range, gun, ship, margin));
    }
    return {
        x,
        y,
        name: `${ship.hull.name} vs. ${gun.ammo.name} (${(margin - 1)*100}% margin)`,
        type: 'scatter'
    };
}

function do_graph(graphEl, hull, thrust, mass, topSpeed, ammos) {
    const ship = new Ship(hull, thrust, mass, topSpeed);
    const data = ammos.flatMap((ammo) => {
        const gun = new Gun(ammo);

        return margins.map((margin) => {
          return make_trace(gun, ship, margin);
        });
    });
    
    const layout = {
      margin: { t: 0 },
      showlegend: true,
    //   legend: { orientation: 'h', y: -0.2 },
      xaxis: { title: "Range (m)" },
      yaxis: { title: "Seconds to Move" },
      autosize: true
    };
    Plotly.newPlot( graphEl, data, layout, { responsive: true });
}

export function movement_inputs() {
    const shipForm = document.getElementById("ship-form");

    const hullInput = shipForm.elements.namedItem("select-hull");
    const thrustInput = shipForm.elements.namedItem("thrust");
    const topSpeedInput = shipForm.elements.namedItem("top-speed");
    const massInput = shipForm.elements.namedItem("mass");
    const ammoInput = shipForm.elements.namedItem("select-ammo");
    const flankInput = shipForm.elements.namedItem("flank");

    for (const hull of hullStats) {
      const o = new Option(hull.name, hull.name);
      hullInput.add(o);
    }
    hullInput.selectedIndex = 0;

    const sortedAmmoNames = gunStats.ammo.map((a) => a.name).sort(); 
    for (const name of sortedAmmoNames) {
      const o = new Option(name, name);
      ammoInput.add(o);
    }
    ammoInput.selectedIndex = 0;

    shipForm.onsubmit = (e) => {
      e.stopPropagation();
      e.preventDefault();

      const flankMult = flankInput.checked ? 1.5 : 1;
      const selectedHull = hullStats.find((hull) => hull.name === hullInput.value);
      const topSpeed = flankMult * parseFloat(topSpeedInput.value);
      const thrust = flankMult * parseFloat(thrustInput.value) * 1000000; // convert from MN
      const mass = parseFloat(massInput.value) * 1000;  // convert from Tonnes
      const lateralThrust = thrust * selectedHull.lateralThrustModifier;
      const brakingThrust = thrust * selectedHull.brakingThrustModifier;
      var selectedAmmo = []
      for(var i=0; i < ammoInput.selectedOptions.length; i++) {
          const o = ammoInput.selectedOptions.item(i);
          const ammo = gunStats.ammo.find((ammo) => ammo.name === o.value);
          selectedAmmo.push(ammo);
      }

      let graphEl = document.getElementById('dodge-graph-main');
      do_graph(graphEl, selectedHull, thrust, mass, topSpeed, selectedAmmo);
      graphEl = document.getElementById('dodge-graph-lateral');
      do_graph(graphEl, selectedHull, lateralThrust, mass, topSpeed, selectedAmmo);
      graphEl = document.getElementById('dodge-graph-braking');
      do_graph(graphEl, selectedHull, brakingThrust, mass, topSpeed, selectedAmmo);
    };

    shipForm.dispatchEvent(new SubmitEvent("submit", { cancelable: true }));
}

movement_inputs();