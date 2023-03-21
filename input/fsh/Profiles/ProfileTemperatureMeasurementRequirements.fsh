Profile: TemperatureMeasurementRequirements
Title: "Temperature Measurement Requirements"
Parent:  Observation
Description: """The system shall be able to capture and report a Temperature measurement from the user.

See [Basic Vital Signs: Temperature Measurement](basic_temperature.html#temperature_measurement)"""
* ^abstract = true
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#001 "World"
* insert TemperatureMeasurementPrecisionAndUnitsAreAppropriateForTemperature

RuleSet: TemperatureMeasurementPrecisionAndUnitsAreAppropriateForTemperature
* valueQuantity ^requirements = """The precision and units of an temperature measurement **SHALL** be appropriate to the measurement.

See [Basic Vital Signs: Precision and Units Are Appropriate for Temperature](basic_temperature.html#temperature_measurement)"""
* valueQuantity obeys TemperatureMeasurementPrecisionAndUnitsAreAppropriateForTemp-1

Invariant: TemperatureMeasurementPrecisionAndUnitsAreAppropriateForTemp-1
Description: """The precision and units of an temperature measurement **SHALL** be appropriate to the measurement."""
Expression: "value.floor() = value or (value * 10).floor() = (value * 10)"
Severity: #error
