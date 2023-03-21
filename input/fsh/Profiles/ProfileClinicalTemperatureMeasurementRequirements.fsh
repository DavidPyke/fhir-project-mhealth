Profile: ClinicalTemperatureMeasurementRequirements
Title: "Clinical Temperature Measurement Requirements"
Parent: Observation
Description: """The system shall be able to capture and report additional data used for clinical interpretation.

See [Clinical Vital Signs: Temperature Measurement](clinical_temperature.html#clinical_temperature_measurement)"""
* ^abstract = true
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#001 "World"
* insert ClinicalTemperatureMeasurementReportMeasurementSite

RuleSet: ClinicalTemperatureMeasurementReportMeasurementSite
* bodySite ^requirements = """The measurement site **SHALL** be able to be reported with each heart rate measurement

See [Clinical Vital Signs: Report Measurement Site](clinical_temperature.html#clinical_temperature_measurement)"""
* bodySite 1..1
* bodySite from http://hl7.org/fhir/ValueSet/body-site
