Profile: WeightMeasurementRequirements
Title: "Weight Measurement Requirements"
Parent: Observation
Description: """The system shall be able to capture and report a weight measurement from the user.

See [Basic Vital Signs: Weight Measurement](basic_height_and_weight.html#weight_measurement)"""
* ^abstract = true
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#001 "World"
* insert WeightMeasurementPrecisionAndUnitsAreAppropriateForWeight

RuleSet: WeightMeasurementPrecisionAndUnitsAreAppropriateForWeight
* valueQuantity ^requirements = """The precision and units of a weight measurement **SHALL** be appropriate to the measurement.

See [Basic Vital Signs: Precision and Units Are Appropriate for Weight](basic_height_and_weight.html#weight_measurement)"""
* valueQuantity obeys WeightMeasurementPrecisionAndUnitsAreAppropriateForWeight-1

Invariant: WeightMeasurementPrecisionAndUnitsAreAppropriateForWeight-1
Description: """The precision and units of a weight measurement **SHALL** be appropriate to the measurement."""
Expression: "value.floor() = value or (value * 10).floor() = (value * 10)"
Severity: #error
