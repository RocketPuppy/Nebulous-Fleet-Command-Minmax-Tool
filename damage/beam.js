import beamCurve from "./beam-curve.js";

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
    y.push(fpa_modifier(fpa_count) * base_damage * 0.6 * c[1]);
  });

  return {
    x,
    y,
    name: `Range ${range}m, ${fpa_count} FPA`,
    type: 'scatter',
    hovertext: fpa_count + " FPA",
    legendgroup: range.toString(),
  };
}

const damageThresholds = [10, 15, 20, 25, 30, 35, 40, 50, 60, 70, 80];

function make_dt_trace(dt, range) {
  const x = [];
  const y = [];
  for(var i = 0; i <= range; i+=10) {
    x.push(i);
    y.push(dt);
  }

  const data = {
    x,
    y,
    showlegend: false,
    legendgroup: "Damage Thresholds",
    mode: "lines",
    hovertext: "DT " + dt,
    hoverinfo: "text",
    hoveron: "points+fills",
    marker: { color: '#33333333' },
  };
  return data;
}

function do_graph() {
    const data = [];
    damageThresholds.forEach((dt) => {
      data.push(make_dt_trace(dt, 5000));
      data.push(make_dt_trace(dt, 6000));
    });
    for (var i = 0; i <= 8; i++) {
      data.push(make_trace(i, 5000));
      data.push(make_trace(i, 6000));
    }

    const graph = document.getElementById('beam-graph');
    const layout = {
      margin: { t: 0 },
      showlegend: true,
      xaxis: { title: "Range (m)" },
      yaxis: { title: "Damage" },
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
