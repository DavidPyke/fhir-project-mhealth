Profile: Spo2MeasurementRequirements
Title: "Spo2 Measurement Requirements"
Parent:  Observation
Description: """The system shall be able to capture and report a Oxygen Saturation measurement from the user.

See [Basic Vital Signs: Oxygen Saturation Measurement](basic_spo2.html#spo2_measurement)"""
* ^abstract = true
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#001 "World"
* insert Spo2MeasurementPrecisionAndUnitsAreAppropriateForOxygenSaturation

RuleSet: Spo2MeasurementPrecisionAndUnitsAreAppropriateForOxygenSaturation
* valueQuantity ^requirements = """The precision and units of an oxygen saturation measurement **SHALL** be appropriate to the measurement.

See [Basic Vital Signs: Precision and Units Are Appropriate for Oxygen Saturation](basic_spo2.html#spo2_measurement)"""
* valueQuantity obeys Spo2MeasurementPrecisionAndUnitsAreAppropriateForOxygenSatur-1

Invariant: Spo2MeasurementPrecisionAndUnitsAreAppropriateForOxygenSatur-1
Description: """The precision and units of an oxygen saturation measurement **SHALL** be appropriate to the measurement."""
Expression: "value.floor() = value or (value * 10).floor() = (value * 10)"
Severity: #error
