Profile: PhysicalActivityAndSleepRecommendations
Title: "Physical Activity And Sleep Recommendations"
Parent:  Observation
Description: """The system shall record the duration and other qualities of physical activities that it can detect.

See [Observations: Physical Activities Including Sleep is Measured](physical_activity_and_sleep.html#physical_activity_and_sleep)"""
* ^abstract = true
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#001 "World"
* insert PhysicalActivityAndSleepSnomedCtCodedMeasurement

RuleSet: PhysicalActivityAndSleepSnomedCtCodedMeasurement
* code ^requirements = """The system **SHOULD** provide SNOMED CT or LOINC codes describing the physical activity or sleep and other quality measurements
along with the duration of the activity.

See [Observations: SNOMED CT Coded Measurement](physical_activity_and_sleep.html#physical_activity_and_sleep)"""
* code obeys PhysicalActivityAndSleepSnomedCtCodedMeasurement-1

Invariant: PhysicalActivityAndSleepSnomedCtCodedMeasurement-1
Description: """The system **SHOULD** provide SNOMED CT or LOINC codes describing the physical activity or sleep and other quality measurements
along with the duration of the activity."""
Expression: "system = 'http://snomed.info/sct' or system = 'http://loinc.org'"
Severity: #warning
