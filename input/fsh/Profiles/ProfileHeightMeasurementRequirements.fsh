Profile: HeightMeasurementRequirements
Title: "Height Measurement Requirements"
Parent: Observation
Description: """The system shall be able to capture and report a height measurement from the user.

See [Basic Vital Signs: Height Measurement](basic_height_and_weight.html#height_measurement)"""
* ^abstract = true
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#001 "World"
* insert HeightMeasurementPrecisionAndUnitsAreAppropriateForHeight

RuleSet: HeightMeasurementPrecisionAndUnitsAreAppropriateForHeight
* valueQuantity ^requirements = """The precision and units of a height (or length) measurement **SHALL** be appropriate to the measurement.

See [Basic Vital Signs: Precision and Units Are Appropriate for Height](basic_height_and_weight.html#height_measurement)"""
* valueQuantity obeys HeightMeasurementPrecisionAndUnitsAreAppropriateForHeight-1

Invariant: HeightMeasurementPrecisionAndUnitsAreAppropriateForHeight-1
Description: """The precision and units of a height (or length) measurement **SHALL** be appropriate to the measurement."""
Expression: "value.floor() = value or (value * 10).floor() = (value * 10)"
Severity: #error
