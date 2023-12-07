function do_graph_internal(chosen_missile, missile_index, chosen_pd, pd_index, stat) {
  const chosen_ammo = chosen_pd.primary_ammo;
  const interval = 10; //m
  const xs = [];
  const ys = [];
  const shots = chosen_ammo.shots_to_kill(chosen_missile);
  for(const range of chosen_ammo.ranges(interval)) {
    const y = stat(chosen_pd, chosen_ammo, chosen_missile, range, shots);
    if (y < 0) {
      xs.push(range);
      ys.push(0);
      continue;
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
    name: missile_name + " vs. " + pdt_name,
    type: 'scatter'
  }

}

export function do_graph(missiles, pdts, stat_fns) {
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
      const color = Math.floor(Math.random()*16777215).toString(16);
      stat_fns.forEach((stat, i) => {
        const d = do_graph_internal(missile, missile_index.toString(), pdt, pdt_index.toString(), stat);
        if (i === 0) {
          d.xaxis = "x";
          d.yaxis = "y";
        } else {
          d.xaxis = "x" + (i+1).toString();
          d.yaxis = "y" + (i+1).toString();
          d.showlegend = false;
        }
        d.marker = { color: color };
        d.legendgroup = d.name;
        console.log("Data:", d);
        data.push(d);
      });
    });
  });
  const graph = document.getElementById('graph');
  const layout = {
    margin: { t: 0 },
    showlegend: true,
    // legend: {
    //   x: 0,
    //   xanchor: 'left',
    //   y: -0.4,
    //   yanchor: 'top'
    // },
    autosize: true
  };
  const stat_count = stat_fns.length;
  stat_fns.forEach((stat, i) => {
    if (i === 0) {
      layout.xaxis = { title: "Encounter Range (m)", domain: [i*(1/stat_count), (i+1) * (1/stat_count)], anchor: "y" },
      layout.yaxis = { title: stat.y_label, anchor: "x" };
    } else {
      layout["xaxis" + (i+1).toString()] = { title: "Encounter Range (m)", domain: [i*(1/stat_count), (i+1) * (1/stat_count)], anchor: "y" + (i+1).toString() }
      layout["yaxis" + (i+1).toString()] = { title: stat.y_label, anchor: "x" + (i+1).toString() };
    }
  });
  console.log(graph, data, layout);
  Plotly.newPlot( graph, data, layout, { responsive: true });
}
