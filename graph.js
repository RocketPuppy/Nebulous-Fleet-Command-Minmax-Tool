import { final_shot_distance_travelled } from "./stats.js";

export function do_graph(chosen_missile, chosen_pd) {
    const chosen_ammo = chosen_pd.primary_ammo;
    const interval = 10; //m
    const data = {};
    const shots = chosen_ammo.shots_to_kill(chosen_missile);
    for(const range of chosen_ammo.ranges(interval)) {
        const y = final_shot_distance_travelled(chosen_pd, chosen_ammo, chosen_missile, range, shots);
        data[y] = range;
    }
    const graph = document.getElementById('graph');
    Plotly.newPlot( graph, [{
        x: Object.values(data),
        y: Object.keys(data),
      }],
      {
        margin: { t: 0 },
        xaxis: { title: "Encounter Range (m)" },
        yaxis: { title: "Kill Range (m)" },
      }
    );
}