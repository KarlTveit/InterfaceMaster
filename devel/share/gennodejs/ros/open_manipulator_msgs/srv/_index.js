
"use strict";

let SetKinematicsPose = require('./SetKinematicsPose.js')
let SetActuatorState = require('./SetActuatorState.js')
let SetDrawingTrajectory = require('./SetDrawingTrajectory.js')
let GetJointPosition = require('./GetJointPosition.js')
let GetKinematicsPose = require('./GetKinematicsPose.js')
let SetJointPosition = require('./SetJointPosition.js')

module.exports = {
  SetKinematicsPose: SetKinematicsPose,
  SetActuatorState: SetActuatorState,
  SetDrawingTrajectory: SetDrawingTrajectory,
  GetJointPosition: GetJointPosition,
  GetKinematicsPose: GetKinematicsPose,
  SetJointPosition: SetJointPosition,
};
