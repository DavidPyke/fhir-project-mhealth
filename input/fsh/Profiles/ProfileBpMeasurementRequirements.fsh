Profile: BpMeasurementRequirements
Title: "Bp Measurement Requirements"
Parent:  Observation
Description: """The system shall be able to capture and report a blood pressure measurement from the user.

See [Basic Vital Signs: Blood Pressure Measurement](basic_blood_pressure.html#bp_measurement)"""
* ^abstract = true
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#001 "World"
* insert BpMeasurementPrecisionAndUnitsAreAppropriateForBloodPressure

RuleSet: BpMeasurementPrecisionAndUnitsAreAppropriateForBloodPressure
* valueQuantity ^requirements = """The precision and units of a blood pressure measurement **SHALL** be appropriate to the measurement.

See [Basic Vital Signs: Precision and Units Are Appropriate for Blood Pressure](basic_blood_pressure.html#bp_measurement)"""
* valueQuantity obeys BpMeasurementPrecisionAndUnitsAreAppropriateForBloodPressure-1

Invariant: BpMeasurementPrecisionAndUnitsAreAppropriateForBloodPressure-1
Description: """The precision and units of a blood pressure measurement **SHALL** be appropriate to the measurement."""
Expression: "value.floor() = value or (value * 10).floor() = (value * 10)"
Severity: #error
