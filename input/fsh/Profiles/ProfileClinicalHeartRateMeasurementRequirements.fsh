Profile: ClinicalHeartRateMeasurementRequirements
Title: "Clinical Heart Rate Measurement Requirements"
Parent: Observation
Description: """The system shall be able to capture and report additional data used for clinical interpretation.

See [Clinical Vital Signs: Heart Rate Measurement](clinical_heart_rate.html#clinical_heart_rate_measurement)"""
* ^abstract = true
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#001 "World"
* insert ClinicalHeartRateMeasurementReportMeasurementSite

RuleSet: ClinicalHeartRateMeasurementReportMeasurementSite
* bodySite ^requirements = """The measurement site **SHALL** be able to be reported with each heart rate measurement

See [Clinical Vital Signs: Report Measurement Site](clinical_heart_rate.html#clinical_heart_rate_measurement)"""
* bodySite 1..1
* bodySite from http://hl7.org/fhir/ValueSet/body-site
