function clamp (value, limits) {
  const [lower, upper] = limits

  if (value == null) return value
  else if (upper != null && value > upper) return upper
  else if (lower != null && value < lower) return lower
  return value
}

export default class PID {
  constructor (
    kp,
    ki,
    kd,
    setpoint,
    {
      sampleTime = 10,
      outputLimits = [],
      autoMode = true,
      proportionalOnMeasurement = false,
      errorMap = x => x
    } = {}
  ) {
    this.kp = kp
    this.ki = ki
    this.kd = kd
    this.setpoint = setpoint
    this.sampleTime = sampleTime
    this.outputLimits = outputLimits
    this.proportionalOnMeasurement = proportionalOnMeasurement
    this.errorMap = errorMap

    this.proportional = 0
    this.integral = 0
    this.derivative = 0

    this._autoMode = autoMode
    this._lastOutput = null
    this._lastInput = null

    this.reset()
  }

  update (input, dt = null) {
    if (dt <= 0) throw new RangeError(`invalid dt value ${dt}, must be positive`)

    const error = this.setpoint - input

    this.integral += this.ki * error * dt
    this.integral = Number.parseFloat(clamp(this.integral, this.outputLimits).toFixed(2));

    const dInput = input - (this._lastInput ?? input)
    this.derivative = Number.parseFloat((this.kd * dInput / dt).toFixed(2));

    this.proportional = Number.parseFloat((this.kp * error).toFixed(2));

    const output = Number.parseFloat(clamp(this.proportional + this.integral - this.derivative, this.outputLimits).toFixed(2));

    this._lastOutput = output
    this._lastInput = input

    return output
  }

  get autoMode () {
    return this._autoMode
  }

  set autoMode (value) {
    this.setAutoMode(value)
  }

  get outputLimits () {
    return this._outputLimits
  }

  set outputLimits (value) {
    if (value == null) value = []
    const [lower, upper] = value

    if (lower != null && upper != null && lower >= upper) {
      throw new RangeError('lower limit must be less than upper')
    }

    this._outputLimits = value
    this.integral = clamp(this.integral, value)
    this._lastOutput = clamp(this._lastOutput, value)
  }

  setAutoMode (enabled, lastOutput = null) {
    if (enabled && !this._autoMode) {
      this.reset()
      this.integral = clamp(lastOutput ?? 0, this.outputLimits)
    }

    this._autoMode = enabled
  }

  reset () {
    this.proportional = 0
    this.integral = clamp(this.integral, this.outputLimits)
    this.derivative = 0

    this._lastOutput = null
    this._lastInput = null
  }
}
