
"use strict";

let SendCustomDxlValue = require('./SendCustomDxlValue.js')
let ManagePosition = require('./ManagePosition.js')
let GetSequenceList = require('./GetSequenceList.js')
let SetLeds = require('./SetLeds.js')
let SetInt = require('./SetInt.js')
let ManageTrajectory = require('./ManageTrajectory.js')
let PushAirVacuumPump = require('./PushAirVacuumPump.js')
let ChangeHardwareVersion = require('./ChangeHardwareVersion.js')
let ManageSequence = require('./ManageSequence.js')
let ChangeMotorConfig = require('./ChangeMotorConfig.js')
let GetTrajectoryList = require('./GetTrajectoryList.js')
let OpenGripper = require('./OpenGripper.js')
let RobotMove = require('./RobotMove.js')
let GetDigitalIO = require('./GetDigitalIO.js')
let ManageProcess = require('./ManageProcess.js')
let CloseGripper = require('./CloseGripper.js')
let SetSequenceAutorun = require('./SetSequenceAutorun.js')
let SetString = require('./SetString.js')
let GetPositionList = require('./GetPositionList.js')
let GetInt = require('./GetInt.js')
let SetDigitalIO = require('./SetDigitalIO.js')
let PullAirVacuumPump = require('./PullAirVacuumPump.js')
let PingDxlTool = require('./PingDxlTool.js')

module.exports = {
  SendCustomDxlValue: SendCustomDxlValue,
  ManagePosition: ManagePosition,
  GetSequenceList: GetSequenceList,
  SetLeds: SetLeds,
  SetInt: SetInt,
  ManageTrajectory: ManageTrajectory,
  PushAirVacuumPump: PushAirVacuumPump,
  ChangeHardwareVersion: ChangeHardwareVersion,
  ManageSequence: ManageSequence,
  ChangeMotorConfig: ChangeMotorConfig,
  GetTrajectoryList: GetTrajectoryList,
  OpenGripper: OpenGripper,
  RobotMove: RobotMove,
  GetDigitalIO: GetDigitalIO,
  ManageProcess: ManageProcess,
  CloseGripper: CloseGripper,
  SetSequenceAutorun: SetSequenceAutorun,
  SetString: SetString,
  GetPositionList: GetPositionList,
  GetInt: GetInt,
  SetDigitalIO: SetDigitalIO,
  PullAirVacuumPump: PullAirVacuumPump,
  PingDxlTool: PingDxlTool,
};
