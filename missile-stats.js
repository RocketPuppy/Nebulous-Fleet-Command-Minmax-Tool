import warheads, { NoFalloff, Warhead } from "./warhead-stats.js";
import PID from './pid.js';

class Missile {
  constructor({ name, scalingFactor, sprintStage, speedBounds, engineSocketBounds, flightTimeBounds, thrustBounds, thrustAngleBounds, warheadSocketIndex, engineSocketIndex, mass, warhead, guidancePID }) {
    this.name = name;
    this.scalingFactor = scalingFactor;
    this.sprintStage = sprintStage;
    this.speedBounds = speedBounds;
    this.engineSocketBounds = engineSocketBounds;
    this.flightTimeBounds = flightTimeBounds;
    this.thrustBounds = thrustBounds;
    this.thrustAngleBounds = thrustAngleBounds;
    this.warheadSocketIndex = warheadSocketIndex;
    this.engineSocketIndex = engineSocketIndex;
    this.mass = mass;
    this.guidancePID = guidancePID;
    if (warhead != null && warhead != undefined) {
      this.warhead = warhead;
      this.warheadSize = 1;
      this.name = `${name} - ${warhead.name}`;
      this.warheadBounds = new Bounds(1, 1);
      this.selectableWarhead = false;
    } else {
      this.selectWarhead(warheads.hei, 3);
      this.warheadBounds = new Bounds(1, 8);
      this.selectableWarhead = true;
    }
  }

  clone() {
    const o = {};
    for(const p in this) {
      o[p] = this[p];
    }
    return new Missile(o);
  }

  selectWarhead(warhead, warheadSize, warheadSpeed) {
    this.warhead = warhead;
    this.warheadSize = warheadSize;
    this.warheadSpeed = warheadSpeed;
    this.name = `${this.name} - ${warhead.name}`;
  }

  get armorPenetration() {
    return this.warhead.armorPenetration(this.weightedWarheadSize, this.warheadSpeed);
  }

  get componentDamage() {
    return this.warhead.componentDamage(this.weightedWarheadSize);
  }

  get weightedWarheadSize() {
    return this.scalingFactor * this.warheadSize;
  }

  thrust(thrustDial) {
    return this.thrustBounds.lerp(thrustDial);
  }

  acceleration(thrustDial) {
    return this.thrust(thrustDial) / this.mass;
  }

  topSpeed(speedDial) {
    return this.speedBounds.lerp(speedDial);
  }

  selectableEngineSize() {
    return this.engineSocketBounds.min !== this.engineSocketBounds.max;
  }

  flightTime(burnDial) {
    return this.flightTimeBounds.lerp(burnDial);
  }

  maxOffAngleThrust(thrustDial) {
    return this.thrustAngleBounds.lerp(thrustDial);
  }

  maxRange(engineSize, speedDial, burnDial, thrustDial) {
    const flightTime = this.flightTime(burnDial) * engineSize;
    const speed = this.topSpeed(speedDial);
    const acceleration = this.acceleration(thrustDial);

    const accelerationTime = speed/acceleration;

    if (accelerationTime > flightTime) {
      return 0.5 * acceleration * flightTime * flightTime;
    } else {
      const accelerationDistance = 0.5 * acceleration * accelerationTime * accelerationTime;
      const flightTimeAfterAccel = flightTime - accelerationTime;
      const flightDistance = flightTimeAfterAccel * speed;
      return accelerationDistance + flightDistance;
    }
  }

  maxTurnAcceleration(speedDial, thrustDial) { // in G
    const speed = this.topSpeed(speedDial);
    const acceleration = this.acceleration(thrustDial);
    const start = scaleVector([0, 0, 1], speed);
    const intoTurn = Quaternion.fromAxisAngle([0, 1, 0], this.maxOffAngleThrust(thrustDial) * Math.PI / 180).rotateVector([0, 0, 1]);
    const turnThrust = scaleVector(intoTurn, acceleration);
    const end = scaleVector(normalizeVector(addVector(start, turnThrust)), speed);
    
    const toVector = vectorTo(start, end);
    const toMag = magVector(toVector);
    return toMag / 9.8;
  }


  /*
  Describing terminal maneuvers
  1. Scaling by target distance
  			targetDistance = Mathf.Clamp(targetDistance - this._baseDesc.EvasionEndDistance, 0f, float.MaxValue) * 10f;
        float direction = this._evasionDirection ? 2f : -2f;
        float magnitudeScaling = Mathf.Log((targetDistance + 100f) / 100f);

        evasion start/end distance is on the guidance module. It's 5000/250 for both right now.
  2. Weave
        float magnitude = direction * magnitudeScaling * Mathf.Sin(targetDistance / 100f);
        result = new Vector3?(this._evasionSpace.Value * (Vector3.right * magnitude));
  3. Cork
        float rightMag = direction * magnitudeScaling * Mathf.Sin(targetDistance / 100f);
        float upMag = direction * magnitudeScaling * Mathf.Cos(targetDistance / 100f);
        result = new Vector3?(this._evasionSpace.Value * (Vector3.right * rightMag) + this._evasionSpace.Value * (Vector3.up * upMag));
  4. result added to flight line vector as "ideal"
  */
  maneuverData(range) {
    const evasionEnd = 250;
    const maxEvasionStart = 5000;
    const startDistance = Math.min(maxEvasionStart, range);
    const targetPosition = [0, 0, 0];
    const startPosition = scaleVector(VECTOR_FORWARD, startDistance);

    const weaveX = [];
    const weaveY = [];
    const weaveZ = [];
    for (let distance=startDistance; distance > evasionEnd; distance -= 10) {
      const offset = this.idealWeaveOffset(startPosition, targetPosition, distance);
      const pos = scaleVector(startPosition, distance/startDistance);
      const offPos = addVector(pos, offset);
      weaveX.push(offPos[0]);
      weaveY.push(offPos[1]);
      weaveZ.push(offPos[2]);
    }
    const corkX = [];
    const corkY = [];
    const corkZ = [];
    for (let distance=startDistance; distance > evasionEnd; distance -= 10) {
      const offset = this.idealCorkscrewOffset(startPosition, targetPosition, distance);
      const pos = scaleVector(startPosition, distance/startDistance);
      const offPos = addVector(pos, offset);
      corkX.push(offPos[0]);
      corkY.push(offPos[1]);
      corkZ.push(offPos[2]);
    }
    return  [{
      type: 'scatter3d',
      mode: 'lines',
      name: "Ideal Weave",
      x: weaveX,
      y: weaveY,
      z: weaveZ,
      opacity: 1,
      line: {
        width: 6,
        reversescale: false
      }
    }, {
      type: 'scatter3d',
      mode: 'lines',
      name: "Ideal Corkscrew",
      x: corkX,
      y: corkY,
      z: corkZ,
      opacity: 1,
      line: {
        width: 6,
        reversescale: false
      }
    }];
  }

  /*
  2. Weave
        float magnitude = direction * magnitudeScaling * Mathf.Sin(targetDistance / 100f);
        result = new Vector3?(this._evasionSpace.Value * (Vector3.right * magnitude));
  */
  idealWeaveOffset(startPosition, targetPosition, distanceToTarget) {
    const evasionEnd = 250;
    const distance = Math.max(evasionEnd, distanceToTarget);
    const direction = 2;
    const magnitudeScaling = Math.log((distance + 100) / 100);
    const evasionSpace = lookRotation(normalizeVector(subVector(startPosition, targetPosition)), VECTOR_UP);

    const magnitude = direction * magnitudeScaling * Math.sin(distance / 100);
    return scaleVector(evasionSpace.rotateVector(scaleVector(VECTOR_RIGHT, magnitude)), 10);
  }

  /*
  
        float rightMag = direction * magnitudeScaling * Mathf.Sin(targetDistance / 100f);
        float upMag = direction * magnitudeScaling * Mathf.Cos(targetDistance / 100f);
        result = new Vector3?(this._evasionSpace.Value * (Vector3.right * rightMag) + this._evasionSpace.Value * (Vector3.up * upMag));
  */
  idealCorkscrewOffset(startPosition, targetPosition, distanceToTarget) {
    const evasionEnd = 250;
    const distance = Math.max(evasionEnd, distanceToTarget);
    const direction = 2;
    const magnitudeScaling = Math.log((distance + 100) / 100);
    const evasionSpace = lookRotation(normalizeVector(subVector(startPosition, targetPosition)), VECTOR_UP);

    const rightMag = direction * magnitudeScaling * Math.sin(distance / 100);
    const upMag = direction * magnitudeScaling * Math.cos(distance / 100);

    return scaleVector(evasionSpace.rotateVector(addVector(scaleVector(VECTOR_RIGHT, rightMag), scaleVector(VECTOR_UP, upMag))), 10);
  }

  /*
   1. Do we need to adjust our position?
      Vector3 toTarget = (target - base.transform.position).normalized;
			Vector3 thrustVector = toTarget;
			Vector3 toTrack = (idealPoint - base.transform.position).normalized;
			Vector3 velocityTowardsTarget = Vector3.Project(this._flight.Velocity, toTarget);
			Vector3 velocityTowardsTrack = Vector3.Project(this._flight.Velocity, toTrack);
			float trackError = Vector3.Distance(base.transform.position, idealPoint);
			bool flag = trackError >= trackEpsilon && velocityTowardsTrack.magnitude * 2f < velocityTowardsTarget.magnitude;

    Generally, yes we will need to do this for evasive maneuvers because trackEpsilon is 0.05
    */
  projectedData(range, speed, thrustDial) {
    const evasionEnd = 250;
    const maxEvasionStart = 5000;
    const startDistance = Math.min(maxEvasionStart, range);
    const targetPosition = [0, 0, 0];
    const startPosition = scaleVector(VECTOR_FORWARD, startDistance);
    const startVelocity = scaleVector(VECTOR_FORWARD, -speed);

    const weaveData = this.projectedWeaveData(startDistance, startPosition, targetPosition, startVelocity, speed, thrustDial);
    return weaveData
    // const corkData = this.projectedCorkData(startDistance, startPosition, targetPosition, startVelocity, speed, thrustDial);

    // return weaveData.concat(corkData);
  }

  projectedWeaveData(startDistance, startPosition, targetPosition, startVelocity, speed, thrustDial, offsetFn) {
    const evasionEnd = 250;
    const maxEvasionStart = 5000;

    const delta = 1/50.0;
    let maxTime = startDistance / speed * 2; // cut the iteration off at some point
    let distance = Math.min(startDistance, maxEvasionStart);
    let position = startPosition;
    let velocity = startVelocity;
    let orientation = lookRotation(normalizeVector(subVector(targetPosition, startPosition)), VECTOR_UP);

    let dataX = [position[0]];
    let dataY = [position[1]];
    let dataZ = [position[2]];
    let velocityX = [velocity[0]];
    let velocityY = [velocity[1]];
    let velocityZ = [velocity[2]];
    let idealX = [position[0]];
    let idealY = [position[1]];
    let idealZ = [position[2]];

    const epsilon = 0.5; // 0.05 * 10
    // maxTime = 2;

    for(let time=0.0; time < maxTime && distance > evasionEnd; time += delta) {
      if (time >= 0.7) {
        debugger;
      }
      const toTarget = normalizeVector(subVector(targetPosition, position));
      let thrustVector = toTarget;
      const closest = closestPointOnLine(position, startPosition, targetPosition);
      const ideal = addVector(closest,  this.idealCorkscrewOffset(startPosition, targetPosition, distance));
      const toIdeal = normalizeVector(subVector(ideal, position));

      const velToTarget = projectVector(velocity, toTarget);
      const velToIdeal = projectVector(velocity, toIdeal);

      const idealError = vectorDistance(position, ideal);

      /*
        2. Alter thrust vector
              this._flight.Pid.ProcessVariable = -trackError;
              Vector3 offAxisThrust = (toTrack * this._flight.Pid.ControlVariable(Time.fixedDeltaTime)).normalized;
              thrustVector = Vector3.RotateTowards(toTarget, thrustVector + offAxisThrust, maxAngleOffLookAt * 0.0174532924f, float.MaxValue);
              Vector3 leftoverVelocity = this._flight.Velocity - (velocityTowardsTarget + velocityTowardsTrack);
              bool flag2 = leftoverVelocity.magnitude > 0f && this._flight.Velocity.magnitude > 0f;
              if (flag2)
              {
                thrustVector -= leftoverVelocity.normalized * (leftoverVelocity.magnitude / this._flight.Velocity.magnitude);
              }

              thrustVector.Normalize()
        */
      if (idealError >= epsilon && magVector(velToIdeal) * 2 < magVector(velToTarget)) {
        const pidOut = this.guidancePID.update(-idealError/10, delta);
        const offAxisThrust = normalizeVector(scaleVector(toIdeal, pidOut * 10));
        thrustVector = rotateQuat(lookRotation(thrustVector, VECTOR_UP), lookRotation(offAxisThrust, VECTOR_UP), 360).rotateVector(VECTOR_FORWARD);
        // thrustVector = addVector(thrustVector, offAxisThrust); // does not cap rotation to seeker FOV
        const leftoverVelocity = subVector(velocity, addVector(velToTarget, velToIdeal));
        if (magVector(leftoverVelocity) > 0 && magVector(velocity) > 0) {
          thrustVector = subVector(thrustVector, scaleVector(normalizeVector(leftoverVelocity), magVector(leftoverVelocity) / magVector(velocity)));
        }
        thrustVector = normalizeVector(thrustVector);
      }

      // This does not account for missile orientation as it tries to keep the nose on the target
      if (this.maxOffAngleThrust(thrustDial) !== null) {
        thrustVector = rotateQuat(orientation, lookRotation(thrustVector, VECTOR_UP), this.maxOffAngleThrust(thrustDial)).rotateVector(VECTOR_FORWARD);
      }
      const force = scaleVector(thrustVector, this.thrust(thrustDial));
      const acceleration = scaleVector(force, 1/this.mass);
      if (acceleration[0] > 0) {
        debugger;
      }
      velocity = addVector(velocity, scaleVector(acceleration, delta));
      position = addVector(position, scaleVector(velocity, delta));
      if (magVector(velocity) > speed) {
        velocity = scaleVector(normalizeVector(velocity), speed);
      }
      distance = magVector(subVector(targetPosition, position));

      dataX.push(position[0]);
      dataY.push(position[1]);
      dataZ.push(position[2]);
      // velocityX.push(velocity[0]);
      // velocityY.push(velocity[1]);
      // velocityZ.push(velocity[2]);
      idealX.push(velocity[0]);
      idealY.push(velocity[1]);
      idealZ.push(velocity[2]);
    }
    return [{
      type: 'scatter3d',
      mode: 'lines',
      name: "Projected Weave",
      x: dataX,
      y: dataY,
      z: dataZ,
      opacity: 1,
      line: {
        width: 6,
        reversescale: false
      }
    }, {
      type: 'scatter3d',
      mode: 'lines',
      name: "Projected Weave",
      x: idealX,
      y: idealY,
      z: idealZ,
      opacity: 1,
      line: {
        width: 6,
        reversescale: false
      }
    }];
  }
 /*
  Navigating to a point
  base.NavigateToPoint(projected, ideal, Vector3.up, new Vector3?(target), fromSeeker.MaxMissileSteering, false, 0.05f);
  Vector3 NavigateToPoint(Vector3 target, Vector3 idealPoint, Vector3 up, Vector3? lookAt, float maxAngleOffLookAt, bool useAvoider, float trackEpsilon = 2.5f)

  MaxMissileSteering is our maxOffAngleLookAt, and it's tied to the seeker FOV (infinity for command).
  

  3. Thrust

        base.Thrust(thrustVector, this._currentStage.EngineComp.Thrust, this._currentStage.EngineComp.Speed,
           new float?(this._currentStage.EngineComp.MaxOffAngleThrust(this.InBoostPhase)));

        Thrust is LERPd value for engine thrust
        Speed is LERPd value for engine speed
        MaxOffAngleThrust is LERPd value for max thrust angle
        
        # Thrust
	      void Thrust(Vector3 thrustVector, float motor, float speedLimit, float? maxOffAngleThrust)

        bool flag = maxOffAngleThrust != null && thrustVector != Vector3.zero;
        if (flag)
        {
          thrustVector = Quaternion.RotateTowards(base.transform.rotation, Quaternion.LookRotation(thrustVector), maxOffAngleThrust.Value) * Vector3.forward;
        }
        this._body.AddForce(thrustVector * motor * Time.fixedDeltaTime, ForceMode.Impulse);
        bool flag2 = this._body.velocity.magnitude > speedLimit;
        if (flag2)
        {
          this._body.velocity = this._body.velocity.normalized * speedLimit;
        }
  */
}

const VECTOR_UP = [0, 0, 1];
const VECTOR_RIGHT = [0, 1, 0];
const VECTOR_FORWARD = [1, 0, 0];

function vectorTo(start, end) {
  return subVector(end, start);
}

function subVector(v1, v2) {
  return [v1[0] - v2[0], v1[1] - v2[1], v1[2] - v2[2]];
}

function addVector(v1, v2) {
  return [v1[0] + v2[0], v1[1] + v2[1], v1[2] + v2[2]];
}

function magVector(v) {
  return Math.sqrt(v[0] * v[0] + v[1] * v[1] + v[2] * v[2]);
}

function scaleVector(v, s) {
  return [v[0] * s, v[1] * s, v[2] * s];
}

function normalizeVector(v) {
  const mag = magVector(v);
  return [v[0] / mag, v[1] / mag, v[2] / mag];
}

function dotVectors(v1, v2) {
  return (v1[0] * v2[0] + v1[1] * v2[1] + v1[2] * v2[2]);
}

function crossVectors(a, b) {
  const x = a[1] * b[2] - a[2] * b[1];
  const y = a[2] * b[0] - a[0] * b[2];
  const z = a[0] * b[1] - a[1] * b[0];

  return [x, y, z];
}

function lookRotation(forward, up) {
  const x = forward;
  const y = crossVectors(up, x);
  const z = crossVectors(x, y);
  
  return vectorsToQuat(x, y, z);
}

function projectVector(v, onto) {
  return scaleVector(onto, (dotVectors(v, onto) / dotVectors(onto, onto)));
}

/*		public static Vector3 ClosestPointOnLine(this Vector3 p, Vector3 a, Vector3 b, out float U, bool cap = false)
		{
			bool flag = a == b;
			Vector3 result;
			if (flag)
			{
				U = 0f;
				result = a;
			}
			else
			{
				U = ((p.x - a.x) * (b.x - a.x) + (p.y - a.y) * (b.y - a.y) + (p.z - a.z) * (b.z - a.z)) / (a - b).sqrMagnitude;
				if (cap)
				{
					U = Mathf.Clamp(U, 0f, 1f);
				}
				Vector3 intersection = new Vector3(a.x + U * (b.x - a.x), a.y + U * (b.y - a.y), a.z + U * (b.z - a.z));
				result = intersection;
			}
			return result;
		}
*/

function squareMagnitude(v) {
  return v[0] * v[0] + v[1] * v[1] + v[2] * v[2];
}

function closestPointOnLine(point, lineStart, lineEnd) {
  const lineStartToPoint = subVector(point, lineStart);
  const lineNorm = subVector(lineEnd, lineStart);
  const scale = dotVectors(lineStartToPoint, lineNorm) / squareMagnitude(lineNorm);
  return addVector(lineStart, scaleVector(lineNorm, scale));
}

function vectorDistance(from, to) {
  return magVector(subVector(from, to));
}

function rotateQuat(from, to, angleLimit) {
  /*
  		public static Quaternion RotateTowards(Quaternion from, Quaternion to, float maxDegreesDelta)
		{
			float angle = Quaternion.Angle(from, to);
			bool flag = angle == 0f;
			Quaternion result;
			if (flag)
			{
				result = to;
			}
			else
			{
				result = Quaternion.SlerpUnclamped(from, to, Mathf.Min(1f, maxDegreesDelta / angle));
			}
			return result;
		}
    */
    let fromN = from.normalize();
    let toN = to.normalize();
    const angle = angleBetweenQuats(fromN, toN);
    if (angle === 0.0) {
      return to;
    } else {
      return fromN.slerp(toN)(Math.min(1, angleLimit / angle)).normalize();
    }
}

function angleBetweenQuats(from, to) {
  /*
  		public static float Angle(Quaternion a, Quaternion b)
		{
			float dot = Quaternion.Dot(a, b);
			return Quaternion.IsEqualUsingDot(dot) ? 0f : (Mathf.Acos(Mathf.Min(Mathf.Abs(dot), 1f)) * 2f * 57.29578f);
		}
    */
   const dot = from.dot(to);
   return dot > 0.999999 ? 0.0 : Math.acos(Math.min(Math.abs(dot), 1)) * 2 * 57.29578;
}

function vectorsToQuat(x, y, z) {
  let m00 = x[0];
  let m01 = x[1];
  let m02 = x[2];
  let m10 = y[0];
  let m11 = y[1];
  let m12 = y[2];
  let m20 = z[0];
  let m21 = z[1];
  let m22 = z[2];
  let qw = 0
  let qx = 1
  let qy = 0
  let qz = 0
  let S = 0
  if (m00 + m11 + m22 > 2.9999) { // check for identity matrix
    qw = 1
    qx = 0
    qy = 0
    qz = 0
  } else if ((m00 + m11 + m22 + 1) > 0.0001) {
    S = Math.sqrt(m00 + m11 + m22 + 1) * 2
    qw = 0.25 * S
    qx = (m21 - m12) / S
    qy = (m02 - m20) / S
    qz = (m10 - m01) / S
  } else if ((m00 > m11) & (m00 > m22)) {
    if ((1.0 + m00 - m11 - m22) <= 0) {
      return new Quaternion(NaN, NaN, NaN, NaN);
    }
    S = Math.sqrt(1.0 + m00 - m11 - m22) * 2; // S=4*qx 
    qw = (m21 - m12) / S
    qx = 0.25 * S
    qy = (m01 + m10) / S
    qz = (m02 + m20) / S
  } else if (m11 > m22) {
    if ((1.0 + m11 - m00 - m22) <= 0) {
      return new Quaternion(NaN, NaN, NaN, NaN);
    }
    S = Math.sqrt(1.0 + m11 - m00 - m22) * 2 // S=4*qy
    qw = (m02 - m20) / S
    qx = (m01 + m10) / S
    qy = 0.25 * S
    qz = (m12 + m21) / S
  } else {
    if ((1.0 + m22 - m00 - m11) <= 0) {
      return new Quaternion(NaN, NaN, NaN, NaN);
    }
    S = Math.sqrt(1.0 + m22 - m00 - m11) * 2 // S=4*qz
    qw = (m10 - m01) / S
    qx = (m02 + m20) / S
    qy = (m12 + m21) / S
    qz = 0.25 * S
  }
  return new Quaternion(qw, qx, qy, qz);
}

class Bounds {
  constructor(min, max) {
    this.min = min;
    this.max = max;
  }

  lerp(x) {
    const delta = this.max - this.min;
    const per = delta * x;
    return this.min + per;
  }

  bound(value) {
    if (this.aboveBound(value)) {
      return this.max;
    }
    if (this.belowBound(value)) {
      return this.min;
    }
    return value;
  }

  aboveBound(value) {
    return value > this.max;
  }

  belowBound(value) {
    return value < this.min;
  }
}

export const s2hsprint = new Missile({
  name: "S2H Cyclone",
  scalingFactor: 0.8,
  speedBounds: new Bounds(500, 1000),
  engineSocketBounds: new Bounds(1, 6),
  flightTimeBounds: new Bounds(0.75, 2.5),
  thrustBounds: new Bounds(500, 1000),
  thrustAngleBounds: new Bounds(25, 45),
  warheadSocketIndex: 4,
  engineSocketIndex: 5,
  mass: 0.5,
  guidancePID: new PID(2, 0.8, 0.3, 0, { autoMode: true, outputLimits: [-10, 10] }),
});

export const s3hsprint = new Missile({
  name: "S3H Atlatl",
  scalingFactor: 1.8,
  speedBounds: new Bounds(550, 1000),
  engineSocketBounds: new Bounds(1, 9),
  flightTimeBounds: new Bounds(0.85, 2.75),
  thrustBounds: new Bounds(1500, 2500),
  thrustAngleBounds: new Bounds(30, 60),
  warheadSocketIndex: 5,
  engineSocketIndex: 6,
  mass: 2,
  guidancePID: new PID(2, 0.8, 0.3, 0, { autoMode: true, outputLimits: [-10, 10] }),
});

export const s2h = new Missile({
  name: "S2H Cyclone (Cruise)",
  scalingFactor: 0.8,
  sprintStage: s2hsprint,
  speedBounds: new Bounds(150, 350),
  engineSocketBounds: new Bounds(1,1),
  flightTimeBounds: new Bounds(40, 130),
  thrustBounds: new Bounds(40, 80),
  thrustAngleBounds: new Bounds(8, 20),
  warheadSocketIndex: null,
  engineSocketIndex: 6,
  mass: 0.5,
});

export const s3h = new Missile({
  name: "S3H Atlatl (Cruise)",
  scalingFactor: 1.8,
  sprintStage: s3hsprint,
  speedBounds: new Bounds(100, 200),
  engineSocketBounds: new Bounds(1, 1),
  flightTimeBounds: new Bounds(80, 250),
  thrustBounds: new Bounds(120, 180),
  thrustAngleBounds: new Bounds(8, 30),
  warheadSocketIndex: null,
  engineSocketIndex: 7,
  mass: 2,
});

export const s1 = new Missile({
  name: "S1 Balestra",
  scalingFactor: 0.33,
  speedBounds: new Bounds(250, 400),
  engineSocketBounds: new Bounds(1, 3),
  flightTimeBounds: new Bounds(2, 8),
  thrustBounds: new Bounds(70, 150),
  thrustAngleBounds: new Bounds(15, 40),
  warheadSocketIndex: 3,
  engineSocketIndex: 4,
  mass: 0.2,
  guidancePID: new PID(5, 0, 3, 0, { autoMode: true, outputLimits: [-10, 10] }),
});

export const s2 = new Missile({
  name: "S2 Tempest",
  scalingFactor: 1,
  speedBounds: new Bounds(150, 350),
  engineSocketBounds: new Bounds(1, 6),
  flightTimeBounds: new Bounds(4, 20),
  thrustBounds: new Bounds(70, 150),
  thrustAngleBounds: new Bounds(12, 30),
  warheadSocketIndex: 4,
  engineSocketIndex: 5,
  mass: 0.5,
  guidancePID: new PID(1, 0, 2, 0, { autoMode: true, outputLimits: [-10, 10] }),
});

export const s3 = new Missile({
  name: "S3T Pilum",
  scalingFactor: 3,
  speedBounds: new Bounds(175, 300),
  engineSocketBounds: new Bounds(1, 9),
  thrustBounds: new Bounds(30, 50),
  flightTimeBounds: new Bounds(1, 4.5),
  thrustAngleBounds: new Bounds(8, 30),
  warheadSocketIndex: 4,
  engineSocketIndex: 5,
  mass: 2,
  guidancePID: new PID(1, 0, 2, 0, { autoMode: true, outputLimits: [-10, 10] }),
});

export const cm4 = new Missile({
  name: "CM-4 Container",
  scalingFactor: 4,
  speedBounds: new Bounds(125, 225),
  engineSocketBounds: new Bounds(5, 14),
  thrustBounds: new Bounds(25, 50),
  flightTimeBounds: new Bounds(3, 40),
  thrustAngleBounds: new Bounds(15, 30),
  warheadSocketIndex: 4,
  engineSocketIndex: 5,
  mass: 4,
  guidancePID: new PID(1, 0, 2, 0, { autoMode: true, outputLimits: [-10, 10] }),
});

export const m30 = new Missile({
  name: "M-30 Mattock",
  scalingFactor: 1,
  speedBounds: new Bounds(250, 250),
  engineSocketBounds: new Bounds(1, 1),
  thrustBounds: new Bounds(40, 40),
  flightTimeBounds: new Bounds(15, 15),
  thrustAngleBounds: new Bounds(10, 10),
  warheadSocketIndex: 1,
  engineSocketIndex: 1,
  mass: 1,
  warhead: new Warhead({
    name: "HE Impact",
    armorPen: 200,
    armorFalloff: new NoFalloff(),
    ricochet: false,
    ignoreEffectiveThickness: true,
    componentDamage: 5000,
    componentFalloff: new NoFalloff(),
    maxPenetrationDepth: 150,
  }),
});

export const m50 = new Missile({
  name: "M-50 Augur",
  scalingFactor: 1,
  speedBounds: new Bounds(700, 700),
  engineSocketBounds: new Bounds(1, 1),
  thrustBounds: new Bounds(100, 100),
  flightTimeBounds: new Bounds(5.5, 5.5),
  thrustAngleBounds: new Bounds(20, 20),
  warheadSocketIndex: 1,
  engineSocketIndex: 1,
  mass: 1,
  warhead: new Warhead({
    name: "HE Impact",
    armorPen: 200,
    armorFalloff: new NoFalloff(),
    ricochet: false,
    ignoreEffectiveThickness: true,
    componentDamage: 5000,
    componentFalloff: new NoFalloff(),
    maxPenetrationDepth: 150,
  }),
});

export const r2 = new Missile({
  name: "R-2 Piranha",
  scalingFactor: 1,
  speedBounds: new Bounds(350, 350),
  engineSocketBounds: new Bounds(1, 1),
  thrustBounds: new Bounds(50, 50),
  flightTimeBounds: new Bounds(20, 20),
  thrustAngleBounds: new Bounds(10, 10),
  warheadSocketIndex: 1,
  engineSocketIndex: 1,
  mass: 0.3,
  warhead: new Warhead({
    name: "HE Impact",
    armorPen: 38,
    armorFalloff: new NoFalloff(),
    ricochet: false,
    ignoreEffectiveThickness: true,
    componentDamage: 850,
    componentFalloff: new NoFalloff(),
    maxPenetrationDepth: 60,
  }),
});

export const missilesByBodyKey = {
  "Stock/SGM-1 Body": s1,
  "Stock/SGM-H-2 Body": s2h,
  "Stock/SGM-H-3 Body": s3h,
  "Stock/SGM-2 Body": s2,
  "Stock/SGT-3 Body": s3,
  "Stock/CM-4 Body": cm4
};

export default {
  "s1": s1,
  "s2": s2,
  "s2h": s2hsprint,
  "s3h": s3hsprint,
  "s3": s3,
  "cm4": cm4,
  "m30": m30,
  "m50": m50,
  "r2": r2,
};
