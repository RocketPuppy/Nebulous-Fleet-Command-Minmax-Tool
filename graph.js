import { intercept_range } from "./stats.js";

function do_graph_internal(chosen_missile, missile_index, chosen_pd, pd_index) {
    const chosen_ammo = chosen_pd.primary_ammo;
    const interval = 10; //m
    const xs = [];
    const ys = [];
    const shots = chosen_ammo.shots_to_kill(chosen_missile);
    for(const range of chosen_ammo.ranges(interval)) {
        const y = intercept_range(chosen_pd, chosen_ammo, chosen_missile, range, shots);
        if (y < 0) {
          xs.push(range);
          ys.push(y);
          break;
        }
        xs.push(range);
        ys.push(y);
    }

    var missile_name = chosen_missile.name;
    if (missile_index !== "") {
      missile_name = missile_name + "(" + missile_index + ")";
    }
    var pdt_name = chosen_pd.name;
    if (pd_index !== "") {
      pdt_name = pdt_name + "(" + pd_index + ")";
    }
    return {
      x: xs,
      y: ys,
      name: missile_name + " vs. " + pdt_name
    }

}

export function do_graph(missiles, pdts) {
    const data = [];
    missiles.forEach((missile, missile_index) => {
      pdts.forEach((pdt, pdt_index) => {
        if (missiles.length === 1) {
          missile_index = "";
        } else {
          missile_index++;
        }
        if (pdts.length === 1) {
          pdt_index = "";
        } else {
          pdt_index++;
        }
        const d = do_graph_internal(missile, missile_index.toString(), pdt, pdt_index.toString());
        console.log("Data:", d);
        data.push(d);
      });
    });
    for (const missile of missiles) {
      for (const pdt of pdts) {
      }
    }
    const graph = document.getElementById('graph');
    Plotly.newPlot( graph, data,
    {
      margin: { t: 0 },
      xaxis: { title: "Encounter Range (m)" },
      yaxis: { title: "Kill Range (m)" },
    }
  );
}
