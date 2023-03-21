Profile: TemperatureMeasurementRecommendations
Title: "Temperature Measurement Recommendations"
Parent:  Observation
Description: """The system shall be able to capture and report a Temperature measurement from the user.

See [Basic Vital Signs: Temperature Measurement](basic_temperature.html#temperature_measurement)"""
* ^abstract = true
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#001 "World"
* insert TemperatureMeasurementLoincCodedTemperatureMeasurement
* insert TemperatureMeasurementUcumCodedTemperatureUnits

RuleSet: TemperatureMeasurementLoincCodedTemperatureMeasurement
* code ^requirements = """The system **SHOULD** provide LOINC codes along with measurements.

See [Basic Vital Signs: LOINC Coded Temperature Measurement](basic_temperature.html#temperature_measurement)"""
* code = LOINC#8310-5 "Body temperature"

RuleSet: TemperatureMeasurementUcumCodedTemperatureUnits
* valueQuantity.system ^requirements = """The measurement **SHOULD** use units coded in UCUM.

See [Basic Vital Signs: UCUM Coded Temperature Units](basic_temperature.html#temperature_measurement)"""
* valueQuantity.system = $unitsofmeasure
* valueQuantity.code ^requirements = """The measurement **SHOULD** use units coded in UCUM.

See [Basic Vital Signs: UCUM Coded Temperature Units](basic_temperature.html#temperature_measurement)"""
* valueQuantity.code from BodyTemperatureUnits
