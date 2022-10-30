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
    name: "Damage Thresholds",
    legendgroup: "Damage Thresholds",
    mode: "lines",
    hovertext: "DT " + dt,
    hoverinfo: "text",
    hoveron: "points+fills",
    marker: { color: '#33333333' },
  };
  return data;
}

export function do_graph(range) {
    const data = [];
    damageThresholds.forEach((dt, i) => {
      const trace = make_dt_trace(dt, range);
      if (i === 0) {
        trace.showlegend = true;
      }
      data.push(trace);
    });
    for (var i = 0; i <= 8; i++) {
      data.push(make_trace(i, range));
    }

    const graph = document.getElementById('beam-graph');
    const layout = {
      margin: { t: 0 },
      showlegend: true,
      legend: { orientation: 'h' },
      xaxis: { title: "Range (m)" },
      yaxis: { title: "Damage" },
      autosize: true
    };
    Plotly.newPlot( graph, data, layout, { responsive: true });
}

export function beam_inputs() {
    const spinalForm = document.getElementById("show-spinal");
    const turretForm = document.getElementById("show-turret");

    spinalForm.onsubmit = (e) => {
        e.preventDefault();
        e.stopPropagation();

        do_graph(6000);
    };

    turretForm.onsubmit = (e) => {
        e.preventDefault();
        e.stopPropagation();

        do_graph(5000);
    };
}

do_graph(5000)
beam_inputs();
