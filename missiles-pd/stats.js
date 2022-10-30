export function time_to_kill(weapon, ammo, missile, range, shots) {
    const time_to_fire = weapon.seconds_to_fire(shots);
    // starting range - range travelled while firing shots to kill - range travelled while last round is travelling
    // rounds / second * 1 / rounds (invert)
    const travelled_during_firing = missile.distance_travelled(time_to_fire);
    const range_after_firing = range - travelled_during_firing;
    // missile travels while round is travelling
    // m -- | ---------- r
    // m ---------- | -- r
    // relative_v = v_m + v_r
    // t = range / relative_v
    const relative_velocity = missile.closing_velocity(ammo);
    const time_to_intercept = range_after_firing / relative_velocity;
    return time_to_fire + time_to_intercept;
}
time_to_kill.y_label = "Time (s)";
time_to_kill.human_name = "Time to Kill - Ideal Conditions";

export function time_to_kill_adjusted(weapon, ammo, missile, range, shots) {
    const adjusted_shots = shots / shot_hit_chance(weapon, ammo, missile, range, 1);
    return time_to_kill(weapon, ammo, missile, range, adjusted_shots);
}
time_to_kill_adjusted.y_label = "Time (s)";
time_to_kill_adjusted.human_name = "Time to Kill";

export function intercept_range_ideal(weapon, ammo, missile, range, shots) {
    const time_to_intercept = time_to_kill(weapon, ammo, missile, range, shots);
    const intercept_range = missile.distance_travelled(time_to_intercept);
    return range - intercept_range;
}
intercept_range_ideal.y_label = "Kill Range (m)";
intercept_range_ideal.human_name = "Kill Range - Ideal conditions";

export function intercept_range(weapon, ammo, missile, range, shots) {
    const adjusted_shots = shots / shot_hit_chance(weapon, ammo, missile, range, 1);
    return intercept_range_ideal(weapon, ammo, missile, range, adjusted_shots);
}
intercept_range.y_label = "Kill Range (m)";
intercept_range.human_name = "Kill Range";

// hit chance for a single shot at a given range
export function shot_hit_chance(weapon, ammo, missile, range, shots) {
    const time_to_intercept = time_to_kill(weapon, ammo, missile, range, 1);
    // weapon angular diameter at range
    const diameter_at_range = 2.0 * range * Math.tan(weapon.angular_diameter / 2.0);
    const radius_at_range = diameter_at_range / 2;
    // area of circle
    const accuracy_circle = Math.PI * radius_at_range * radius_at_range;
    // area that missile could maneuver to given acceleration and time on target (make this configurable)
    const maneuver_radius = missile.maneuver_distance(time_to_intercept, (!!missile.orthogonal_speed ? missile.orthogonal_speed : 0) * missile.max_speed, missile.maneuvering_strength);
    const maneuver_circle = Math.PI * maneuver_radius * maneuver_radius;
    // cross sectional area of missile (head-on or side-on) (estimated as a circle of some square footage)
    const cross_section_circle = missile.cross_section_area(missile.cross_section_percent);
    // hit probability on missile is percentage of missile cross-section vs. angular diameter
    const base_hit_probability = cross_section_circle / accuracy_circle;
    // incorporating maneuverability
    // - physically this moves the center of the cross-sectional area. 
    // - What is the probability that the entire cross sectional area is outside of the angular diameter?
    // - angular radius + cross-sectional radius yields an inner disc, which when subtracted from the maneuver disc yields a ring.
    const cross_section_radius = Math.sqrt(cross_section_circle/Math.PI);
    const inner_accuracy_ring = radius_at_range + cross_section_radius;
    // - probability that missile is in that ring is base probability it is not going to get hit
    // - inverted is the probability it might get hit.
    const maneuver_hit_probability = (Math.PI * inner_accuracy_ring * inner_accuracy_ring) / maneuver_circle;
    // - multiply by original hit probability
    return Math.min(1, maneuver_hit_probability * base_hit_probability);
}
shot_hit_chance.y_label = "Hit Probability (%)";
shot_hit_chance.human_name = "Hit Probability";
