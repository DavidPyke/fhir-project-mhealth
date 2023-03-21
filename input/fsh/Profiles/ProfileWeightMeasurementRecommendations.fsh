Profile: WeightMeasurementRecommendations
Title: "Weight Measurement Recommendations"
Parent: Observation
Description: """The system shall be able to capture and report a weight measurement from the user.

See [Basic Vital Signs: Weight Measurement](basic_height_and_weight.html#weight_measurement)"""
* ^abstract = true
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#001 "World"
* insert WeightMeasurementLoincCodedWeightMeasurement
* insert WeightMeasurementUcumCodedWeightUnits

RuleSet: WeightMeasurementLoincCodedWeightMeasurement
* code ^requirements = """The measurement **SHOULD** be coded in LOINC.

See [Basic Vital Signs: LOINC Coded Weight Measurement](basic_height_and_weight.html#weight_measurement)"""
* code = LOINC#29463-7

RuleSet: WeightMeasurementUcumCodedWeightUnits
* valueQuantity.code ^requirements = """The measurement **SHOULD** use units coded in UCUM.

See [Basic Vital Signs: UCUM Coded Weight Units](basic_height_and_weight.html#weight_measurement)"""
* valueQuantity.code from BodyWeightUnits
* valueQuantity.system ^requirements = """The measurement **SHOULD** use units coded in UCUM.

See [Basic Vital Signs: UCUM Coded Weight Units](basic_height_and_weight.html#weight_measurement)"""
* valueQuantity.system = $unitsofmeasure
