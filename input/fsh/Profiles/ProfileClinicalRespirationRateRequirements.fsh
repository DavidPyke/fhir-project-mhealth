Profile: ClinicalRespirationRateRequirements
Title: "Clinical Respiration Rate Requirements"
Parent: Observation
Description: """The system shall be able to capture and report additional data used for clinical interpretation.

See [Clinical Vital Signs: Clinical Respiration Rate Measurement](clinical_respiration.html#clinical_respiration_rate)"""
* ^abstract = true
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#001 "World"
* insert ClinicalRespirationRateReportMeasurementSite

RuleSet: ClinicalRespirationRateReportMeasurementSite
* bodySite ^requirements = """The measurement site **SHALL** be able to be reported with each respiration rate measurement.
Respiration rate, like many other vital signs, can be evaluated using different devices (e.g., chest strap, wrist strap, nasal sensor) and methods;
though most consumer devices use some form of chest strap today.

See [Clinical Vital Signs: Report Measurement Site](clinical_respiration.html#clinical_respiration_rate)"""
* bodySite 1..1
* bodySite from http://hl7.org/fhir/ValueSet/body-site
