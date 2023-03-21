Profile: ClinicalBpMeasurementRecommendations
Title: "Clinical Bp Measurement Recommendations"
Parent: Observation
Description: """The system shall be able to capture and report additional data used for clinical interpretation.

To supplement this blood pressure observation, the mean arterial blood pressure should be computed, and the measurement site and
cuff size (where applicable) shall be reported.

See [Clinical Vital Signs: Clinical Blood Pressure Measurement](clinical_blood_pressure.html#clinical_bp_measurement)"""
* ^abstract = true
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#001 "World"
* insert ClinicalBpMeasurementReportMeanArterialBloodPressure

RuleSet: ClinicalBpMeasurementReportMeanArterialBloodPressure
*  obeys ClinicalBpMeasurementReportMeanArterialBloodPressure-1

Invariant: ClinicalBpMeasurementReportMeanArterialBloodPressure-1
Description: """The system **SHOULD** be able to report mean arterial blood pressure as computed from systolic and diastolic measures
or through other means."""
Expression: "component.where(code = LOINC#8478-0).exists()"
Severity: #warning
