Profile: HeightMeasurementRecommendations
Title: "Height Measurement Recommendations"
Parent: Observation
Description: """The system shall be able to capture and report a height measurement from the user.

See [Basic Vital Signs: Height Measurement](basic_height_and_weight.html#height_measurement)"""
* ^abstract = true
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#001 "World"
* insert HeightMeasurementLoincCodedHeightMeasurement
* insert HeightMeasurementUcumCodedHeightUnits

RuleSet: HeightMeasurementLoincCodedHeightMeasurement
* code ^requirements = """The measurement **SHOULD** be coded in LOINC.

See [Basic Vital Signs: LOINC Coded Height Measurement](basic_height_and_weight.html#height_measurement)"""
* code from BodyHeight

RuleSet: HeightMeasurementUcumCodedHeightUnits
* valueQuantity.code ^requirements = """The measurement **SHOULD** use units coded in UCUM.

See [Basic Vital Signs: UCUM Coded Height Units](basic_height_and_weight.html#height_measurement)"""
* valueQuantity.code from BodyHeightUnits
* valueQuantity.system ^requirements = """The measurement **SHOULD** use units coded in UCUM.

See [Basic Vital Signs: UCUM Coded Height Units](basic_height_and_weight.html#height_measurement)"""
* valueQuantity.system = $unitsofmeasure
