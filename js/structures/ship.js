export default class {
  constructor(hull, thrust, mass, topSpeed) {
    this.hull = hull;
    this.thrust = thrust;
    this.mass = mass;
    this.topSpeed = topSpeed;
  }

  get minimum_dimension() {
    const dims = [this.hull.height, this.hull.length, this.hull.width];

    return dims.sort()[0];
  }

  get acceleration() {
    return this.thrust / this.mass;
  }
}
