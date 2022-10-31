import beamCurve from "./beam-curve.js";
import hullStats from "./hull-stats.js";
import componentStats from "./component-stats.js";

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

function make_trace(fpa_count, range, damageResistance) {
  const x = [];
  const y = [];
  const data = beamCurve.forEach((c) => {
    x.push(range * c[0]);
    y.push(fpa_modifier(fpa_count) * base_damage * ((100 - damageResistance)/100) * c[1]);
  });

  return {
    x,
    y,
    name: `Range ${range}m, ${fpa_count} FPA`,
    type: 'scatter',
    hovertext: fpa_count + " FPA",
  };
}

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

export function do_graph(range, hull, components) {
    const data = [];
    var filterState = {};
    const damageThresholds = components.map((component) => component.damageThreshold).filter((dt) => !filterState[dt] && (filterState[dt] = true));
    damageThresholds.forEach((dt, i) => {
      const trace = make_dt_trace(dt, range);
      if (i === 0) {
        trace.showlegend = true;
      }
      data.push(trace);
    });
    for (var i = 0; i <= 8; i++) {
      data.push(make_trace(i, range, hull.damageResistance));
    }

    const graph = document.getElementById('beam-graph');
    const layout = {
      margin: { t: 0 },
      showlegend: true,
      legend: { orientation: 'h', y: -0.2 },
      xaxis: { title: "Range (m)" },
      yaxis: { title: "Damage" },
      autosize: true
    };
    Plotly.newPlot( graph, data, layout, { responsive: true });
}

export function beam_inputs() {
    const beamForm = document.getElementById("beam-form");

    const hullInput = beamForm.elements.namedItem("select-hull");
    const componentsInput = beamForm.elements.namedItem("select-components");
    const rangeInput = beamForm.elements.namedItem("select-range");

    for (const hull of hullStats) {
      const o = new Option(hull.name, hull.name);
      hullInput.add(o);
    }
    hullInput.selectedIndex = 0;

    const sortedComponentNames = componentStats.map((c) => c.name).sort(); 
    for (const name of sortedComponentNames) {
      const o = new Option(name, name);
      componentsInput.add(o);
    }
    componentsInput.selectedIndex = 0;

    beamForm.onsubmit = (e) => {
      e.stopPropagation();
      e.preventDefault();

      const selectedHull = hullStats.find((hull) => hull.name === hullInput.value);
      const selectedRange = parseInt(rangeInput.value, 10);
      var selectedComponents = []
      for(var i=0; i < componentsInput.selectedOptions.length; i++) {
          const o = componentsInput.selectedOptions.item(i);
          const component = componentStats.find((component) => component.name === o.value);
          selectedComponents.push(component);
      }

      do_graph(selectedRange, selectedHull, selectedComponents);
    };

    beamForm.dispatchEvent(new SubmitEvent("submit"));
}

beam_inputs();
