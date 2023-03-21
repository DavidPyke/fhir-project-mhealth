Profile: ClinicalSpo2MeasurementRequirements
Title: "Clinical Spo2 Measurement Requirements"
Parent: Observation
Description: """The system shall be able to capture and report additional data used for clinical interpretation.

See [Clinical Vital Signs: Oxygen Saturation Measurement](clinical_spo2.html#clinical_spo2_measurement)"""
* ^abstract = true
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#001 "World"
* insert ClinicalSpo2MeasurementReportMeasurementSite

RuleSet: ClinicalSpo2MeasurementReportMeasurementSite
* bodySite ^requirements = """The measurement site **SHALL** be able to be reported with each Oxygen Saturation measurement

See [Clinical Vital Signs: Report Measurement Site](clinical_spo2.html#clinical_spo2_measurement)"""
* bodySite 1..1
* bodySite from http://hl7.org/fhir/ValueSet/body-site
