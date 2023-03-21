Profile: BpMeasurementRecommendations
Title: "Bp Measurement Recommendations"
Parent:  Observation
Description: """The system shall be able to capture and report a blood pressure measurement from the user.

See [Basic Vital Signs: Blood Pressure Measurement](basic_blood_pressure.html#bp_measurement)"""
* ^abstract = true
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#001 "World"
* insert BpMeasurementLoincCodedBloodPressureMeasurement
* insert BpMeasurementUcumCodedBloodPressureUnits

RuleSet: BpMeasurementLoincCodedBloodPressureMeasurement
* code ^requirements = """The measurement **SHOULD** be coded in LOINC.

See [Basic Vital Signs: LOINC Coded Blood Pressure Measurement](basic_blood_pressure.html#bp_measurement)"""
* code from BloodPressureMeasurements
* component.code ^requirements = """The measurement **SHOULD** be coded in LOINC.

See [Basic Vital Signs: LOINC Coded Blood Pressure Measurement](basic_blood_pressure.html#bp_measurement)"""
* component.code from BloodPressureMeasurements

RuleSet: BpMeasurementUcumCodedBloodPressureUnits
* valueQuantity ^requirements = """The measurement **SHOULD** use units coded in UCUM.

See [Basic Vital Signs: UCUM Coded Blood Pressure Units](basic_blood_pressure.html#bp_measurement)"""
* valueQuantity MS
* valueQuantity 1..1
* valueQuantity.system ^requirements = """The measurement **SHOULD** use units coded in UCUM.

See [Basic Vital Signs: UCUM Coded Blood Pressure Units](basic_blood_pressure.html#bp_measurement)"""
* valueQuantity.system = $unitsofmeasure
* valueQuantity.code ^requirements = """The measurement **SHOULD** use units coded in UCUM.

See [Basic Vital Signs: UCUM Coded Blood Pressure Units](basic_blood_pressure.html#bp_measurement)"""
* valueQuantity.code = #'mm[Hg]'
