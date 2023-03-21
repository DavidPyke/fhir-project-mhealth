Profile: ClinicalBpMeasurementRequirements
Title: "Clinical Bp Measurement Requirements"
Parent: Observation
Description: """The system shall be able to capture and report additional data used for clinical interpretation.

To supplement this blood pressure observation, the mean arterial blood pressure should be computed, and the measurement site and
cuff size (where applicable) shall be reported.

See [Clinical Vital Signs: Clinical Blood Pressure Measurement](clinical_blood_pressure.html#clinical_bp_measurement)"""
* ^abstract = true
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#001 "World"
* insert ClinicalBpMeasurementReportMeasurementSite
* insert ClinicalBpMeasurementReportCuffSize

RuleSet: ClinicalBpMeasurementReportMeasurementSite
* bodySite ^requirements = """The measurement site **SHALL** be able to be reported with each blood pressure measurement

See [Clinical Vital Signs: Report Measurement Site](clinical_blood_pressure.html#clinical_bp_measurement)"""
* bodySite 1..1
* bodySite from http://hl7.org/fhir/ValueSet/body-site

RuleSet: ClinicalBpMeasurementReportCuffSize
*  obeys ClinicalBpMeasurementReportCuffSize-1

Invariant: ClinicalBpMeasurementReportCuffSize-1
Description: """If a cuff is used to measure blood pressure, the cuff size **SHALL** be able to be reported with each blood pressure measurement."""
Expression: "component.where(code = LOINC#8358-4).exists()"
Severity: #error
