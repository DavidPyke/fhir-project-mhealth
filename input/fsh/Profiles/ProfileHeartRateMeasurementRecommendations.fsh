Profile: HeartRateMeasurementRecommendations
Title: "Heart Rate Measurement Recommendations"
Parent: Observation
Description: """The system shall be able to capture and report a heart rate measurement from the user.

See [Basic Vital Signs: Heart Rate Measurement](basic_heart_rate.html#heart_rate_measurement)"""
* ^abstract = true
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#001 "World"
* insert HeartRateMeasurementLoincCodedHeartRateMeasurement
* insert HeartRateMeasurementUcumCodedHeartRateUnits

RuleSet: HeartRateMeasurementLoincCodedHeartRateMeasurement
* code ^requirements = """The system **SHOULD** provide LOINC codes along with measurements.

See [Basic Vital Signs: LOINC Coded Heart Rate Measurement](basic_heart_rate.html#heart_rate_measurement)"""
* code = LOINC#8867-4 "Heart Rate"

RuleSet: HeartRateMeasurementUcumCodedHeartRateUnits
* valueQuantity.code ^requirements = """The measurement **SHOULD** use units coded in UCUM.

See [Basic Vital Signs: UCUM Coded Heart Rate Units](basic_heart_rate.html#heart_rate_measurement)"""
* valueQuantity.code from HeartRateUnits
