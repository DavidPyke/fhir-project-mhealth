Profile: Spo2MeasurementRecommendations
Title: "Spo2 Measurement Recommendations"
Parent:  Observation
Description: """The system shall be able to capture and report a Oxygen Saturation measurement from the user.

See [Basic Vital Signs: Oxygen Saturation Measurement](basic_spo2.html#spo2_measurement)"""
* ^abstract = true
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#001 "World"
* insert Spo2MeasurementLoincCodedOxygenSaturationMeasurement
* insert Spo2MeasurementUcumCodedOxygenSaturationUnits

RuleSet: Spo2MeasurementLoincCodedOxygenSaturationMeasurement
* code ^requirements = """The system **SHOULD** provide LOINC codes along with measurements.

See [Basic Vital Signs: LOINC Coded Oxygen Saturation Measurement](basic_spo2.html#spo2_measurement)"""
* code = LOINC#59408-5 "Oxygen saturation in Arterial blood by Pulse oximetry"

RuleSet: Spo2MeasurementUcumCodedOxygenSaturationUnits
* valueQuantity.code ^requirements = """The measurement **SHOULD** use units coded in UCUM.

See [Basic Vital Signs: UCUM Coded Oxygen Saturation Units](basic_spo2.html#spo2_measurement)"""
* valueQuantity.code = #'%'
* valueQuantity.system ^requirements = """The measurement **SHOULD** use units coded in UCUM.

See [Basic Vital Signs: UCUM Coded Oxygen Saturation Units](basic_spo2.html#spo2_measurement)"""
* valueQuantity.system = $unitsofmeasure
* valueQuantity.unit ^requirements = """The measurement **SHOULD** use units coded in UCUM.

See [Basic Vital Signs: UCUM Coded Oxygen Saturation Units](basic_spo2.html#spo2_measurement)"""
* valueQuantity.unit = "%"
