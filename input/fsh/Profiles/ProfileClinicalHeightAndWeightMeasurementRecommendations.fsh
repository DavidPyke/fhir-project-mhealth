Profile: ClinicalHeightAndWeightMeasurementRecommendations
Title: "Clinical Height And Weight Measurement Recommendations"
Parent:  Observation
Description: """The system shall be able to capture and record other data to facilitate interpretation of
    height and weight measurements.

See [Clinical Vital Signs: Capture of Clinical Data With Weight Measurement.](clinical_height_and_weight.html#clinical_height_and_weight_measurement)"""
* ^abstract = true
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#001 "World"
* insert ClinicalHeightAndWeightMeasurementLoincCodedBmiMeasurement
* insert ClinicalHeightAndWeightMeasurementUcumCodedBmiUnits

RuleSet: ClinicalHeightAndWeightMeasurementLoincCodedBmiMeasurement
* code ^requirements = """The system **SHOULD** provide LOINC codes along with measurements.

See [Clinical Vital Signs: LOINC Coded BMI Measurement](clinical_height_and_weight.html#clinical_height_and_weight_measurement)"""
* code = LOINC#39156-5 "Body mass index (BMI) [RATIO]"

RuleSet: ClinicalHeightAndWeightMeasurementUcumCodedBmiUnits
* valueQuantity.system ^requirements = """The measurement **SHOULD** use units coded in UCUM.

See [Clinical Vital Signs: UCUM Coded BMI Units](clinical_height_and_weight.html#clinical_height_and_weight_measurement)"""
* valueQuantity.system = $unitsofmeasure
* valueQuantity.code ^requirements = """The measurement **SHOULD** use units coded in UCUM.

See [Clinical Vital Signs: UCUM Coded BMI Units](clinical_height_and_weight.html#clinical_height_and_weight_measurement)"""
* valueQuantity.code = #'kg/m2'
* valueQuantity.unit ^requirements = """The measurement **SHOULD** use units coded in UCUM.

See [Clinical Vital Signs: UCUM Coded BMI Units](clinical_height_and_weight.html#clinical_height_and_weight_measurement)"""
* valueQuantity.unit = #'kg/m2'
