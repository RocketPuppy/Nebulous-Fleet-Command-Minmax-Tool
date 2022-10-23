export function final_shot_distance_travelled(weapon, ammo, missile, range, shots) {
    // starting range - range travelled while firing shots to kill - range travelled while last round is travelling
    // rounds / second * 1 / rounds (invert)
    const travelled_during_firing = missile.distance_travelled(weapon.seconds_to_fire(shots));
    const range_after_firing = range - travelled_during_firing;
    // missile travels while round is travelling
    // m -- | ---------- r
    // m ---------- | -- r
    // relative_v = v_m + v_r
    // t = range / relative_v
    const relative_velocity = missile.closing_velocity(ammo);
    const time_to_intercept = range_after_firing / relative_velocity;
    const intercept = missile.distance_travelled(time_to_intercept);
    const intercept_range = range_after_firing - missile.distance_travelled(time_to_intercept);
    if (range % 100 == 0) {
        const sample = {
            weapon,
            ammo,
            missile,
            range,
            shots,
            speed: missile.max_speed,
            rof: weapon.rof,
            ammo_velocity: ammo.velocity,
            rof_per_second: weapon.rof_per_second,
            time_to_fire: weapon.seconds_to_fire(shots),
            travelled_during_firing,
            range_after_firing,
            intercept,
            intercept_range,
            time_to_intercept,
            relative_velocity,
        };
        console.log("Sample: ", sample);
    }
    return intercept_range;
};