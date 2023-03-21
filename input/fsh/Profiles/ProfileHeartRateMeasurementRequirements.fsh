Profile: HeartRateMeasurementRequirements
Title: "Heart Rate Measurement Requirements"
Parent: Observation
Description: """The system shall be able to capture and report a heart rate measurement from the user.

See [Basic Vital Signs: Heart Rate Measurement](basic_heart_rate.html#heart_rate_measurement)"""
* ^abstract = true
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#001 "World"
* insert HeartRateMeasurementPrecisionAndUnitsAreAppropriateForHeartRate

RuleSet: HeartRateMeasurementPrecisionAndUnitsAreAppropriateForHeartRate
* valueQuantity ^requirements = """The precision and units of a heart rate measurement **SHALL** be appropriate to the measurement.

See [Basic Vital Signs: Precision and Units Are Appropriate for Heart Rate](basic_heart_rate.html#heart_rate_measurement)"""
* valueQuantity obeys HeartRateMeasurementPrecisionAndUnitsAreAppropriateForHeartR-1

Invariant: HeartRateMeasurementPrecisionAndUnitsAreAppropriateForHeartR-1
Description: """The precision and units of a heart rate measurement **SHALL** be appropriate to the measurement."""
Expression: "value.floor() = value or (value * 10).floor() = (value * 10)"
Severity: #error
