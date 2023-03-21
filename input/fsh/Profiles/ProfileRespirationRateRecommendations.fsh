Profile: RespirationRateRecommendations
Title: "Respiration Rate Recommendations"
Parent:  Observation
Description: """The system shall be able to capture and report a respiration rate measurement from the user.

See [Basic Vital Signs: Respiration Rate Measurement](basic_respiration.html#respiration_rate)"""
* ^abstract = true
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#001 "World"
* insert RespirationRateLoincCodedRespirationRateMeasurement
* insert RespirationRateUcumCodedRespirationRateUnits

RuleSet: RespirationRateLoincCodedRespirationRateMeasurement
* code ^requirements = """The system **SHOULD** provide codes along with measurements.

See [Basic Vital Signs: LOINC Coded Respiration Rate Measurement](basic_respiration.html#respiration_rate)"""
* code = LOINC#9279-1 "Respiratory Rate"

RuleSet: RespirationRateUcumCodedRespirationRateUnits
* valueQuantity.code ^requirements = """The measurement **SHOULD** use units coded in UCUM.

See [Basic Vital Signs: UCUM Coded Respiration Rate Units](basic_respiration.html#respiration_rate)"""
* valueQuantity.code from RespirationRateUnits
