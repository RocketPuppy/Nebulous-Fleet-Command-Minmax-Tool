import beamCurve from "./js/stats/beam-curve.js";

const base_damage = 60;
const base_pen = 36;
const fpa_boost = 0.25;

function fpa_modifier(count) {
  // IF(module_count=0, 0, SUM(MAP(MAKEARRAY(module_count,1,LAMBDA(row, col, row-1)), LAMBDA(iter, base_modifier * EXP(-POW(iter / 3.5, 2))))))
  var sum = 0;
  for(var i = 1; i <= count; i++) {
    sum += fpa_boost * Math.exp(0 - Math.pow(i / 3.5, 2));
  }
  return sum + 1;
}

function make_trace(fpa_count, range) {
  const x = [];
  const y = [];
  const data = beamCurve.forEach((c) => {
    x.push(range * c[0]);
    y.push(fpa_modifier(fpa_count) * base_damage * c[1]);
  });

  return {
    x,
    y,
    name: `Range ${range}m, ${fpa_count} FPA`,
    type: 'scatter'
  };
}

function do_graph() {
  const data = [];
  for (var i = 0; i <= 8; i++) {
    data.push(make_trace(i, 5000));
    data.push(make_trace(i, 6000));
  }

  const graph = document.getElementById('beam-graph');
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
  Plotly.newPlot( graph, data, layout, { responsive: true });
}

do_graph()
