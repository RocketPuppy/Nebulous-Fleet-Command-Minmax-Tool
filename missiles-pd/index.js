import { missiles, point_defense } from "./data.js";
import { inputs } from "./../missiles-pd/ui.js";
import { do_graph } from "./graph.js";

inputs(missiles, point_defense, do_graph);
