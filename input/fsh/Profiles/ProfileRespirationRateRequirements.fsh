Profile: RespirationRateRequirements
Title: "Respiration Rate Requirements"
Parent:  Observation
Description: """The system shall be able to capture and report a respiration rate measurement from the user.

See [Basic Vital Signs: Respiration Rate Measurement](basic_respiration.html#respiration_rate)"""
* ^abstract = true
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#001 "World"
* insert RespirationRatePrecisionAndUnitsAreAppropriateForHeartRate

RuleSet: RespirationRatePrecisionAndUnitsAreAppropriateForHeartRate
* valueQuantity ^requirements = """The precision and units of a heart rate measurement **SHALL** be appropriate to the measurement.

See [Basic Vital Signs: Precision and Units Are Appropriate for Heart Rate](basic_respiration.html#respiration_rate)"""
* valueQuantity obeys RespirationRatePrecisionAndUnitsAreAppropriateForHeartRate-1

Invariant: RespirationRatePrecisionAndUnitsAreAppropriateForHeartRate-1
Description: """The precision and units of a heart rate measurement **SHALL** be appropriate to the measurement."""
Expression: "value.floor() = value or (value * 10).floor() = (value * 10)"
Severity: #error
