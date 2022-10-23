import { final_shot_distance_travelled } from "./stats.js";

function do_graph_internal(chosen_missile, chosen_pd) {
    const chosen_ammo = chosen_pd.primary_ammo;
    const interval = 10; //m
    const xs = [];
    const ys = [];
    const shots = chosen_ammo.shots_to_kill(chosen_missile);
    for(const range of chosen_ammo.ranges(interval)) {
        const y = final_shot_distance_travelled(chosen_pd, chosen_ammo, chosen_missile, range, shots);
        xs.push(range);
        ys.push(y);
    }
    const graph = document.getElementById('graph');

    return {
      x: xs,
      y: ys,
      name: chosen_missile.name + " vs. " + chosen_pd.name
    }

}

export function do_graph(missiles, pdts) {
    const data = [];
    for (const missile of missiles) {
      for (const pdt of pdts) {
        const d = do_graph_internal(missile, pdt);
        console.log("Data:", d);
        data.push(d);
      }
    }
    Plotly.newPlot( graph, data,
    {
      margin: { t: 0 },
      xaxis: { title: "Encounter Range (m)" },
      yaxis: { title: "Kill Range (m)" },
    }
  );
}