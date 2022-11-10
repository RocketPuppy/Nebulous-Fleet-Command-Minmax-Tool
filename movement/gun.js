export default class {
    constructor(ammo) {
        this.ammo = ammo;
    }

    travel_time(range) {
        return range / this.ammo.velocity;
    }

    *ranges(interval) {
        for(var i = this.ammo.range; i >= 0; i -= interval) {
            if (i <= 0 ) {
                break;
            }
            yield i;
        }
        yield 0;
    }
}