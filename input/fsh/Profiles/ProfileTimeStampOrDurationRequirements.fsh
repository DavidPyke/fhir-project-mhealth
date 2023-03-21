Profile: TimeStampOrDurationRequirements
Title: "Time Stamp Or Duration Requirements"
Parent:  Observation
Description: """The time stamp or time period associated with a measurement shall be recorded and reported for each measurement taken,
 and the time when the measure was recorded is also tracked.

 Note: These requirements are checked for each measurement for which the system is
 being assessed.  If the requirement fails for **ANY** measurement, the requirement is considered to not be met.

See [General Observations: A Time Stamp or Time Period is Recorded for Each Measurement](general_requirements.html#time_stamp_or_duration)"""
* ^abstract = true
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#001 "World"
* insert TimeStampOrDurationTimeOfMeasurementRecorded
* insert TimeStampOrDurationTimeOfRecordingStored

RuleSet: TimeStampOrDurationTimeOfMeasurementRecorded
*  obeys TimeStampOrDurationTimeOfMeasurementRecorded-1

Invariant: TimeStampOrDurationTimeOfMeasurementRecorded-1
Description: """Measurements **SHALL** have a time stamp or time period noting the time of measurement"""
Expression: "effectiveDateTime.exists() or effectivePeriod.exists()"
Severity: #error

RuleSet: TimeStampOrDurationTimeOfRecordingStored
* issued ^requirements = """Measurements **SHALL** have a time stamp or time period noting the time the data was recorded

See [General Observations: Time of Recording Stored](general_requirements.html#time_stamp_or_duration)"""
* issued MS
* issued 1..1
