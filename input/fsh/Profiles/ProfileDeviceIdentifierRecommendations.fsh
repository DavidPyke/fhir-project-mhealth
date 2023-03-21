Profile: DeviceIdentifierRecommendations
Title: "Device Identifier Recommendations"
Parent: Device
Description: """The device that performs a measurement shall be uniquely identified.

Each type of device has attributes with regard to precision, accuracy and quality that
can impact the interpretation of measurements taken by the device.  Knowledge of the
device helps greatly in interpreting the results.

See [System Data: Device Can be Identified](system_attributes.html#device_identifier)"""
* ^abstract = true
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#001 "World"
* insert DeviceIdentifierTheDeviceHasAUniqueDeviceIdentifier

RuleSet: DeviceIdentifierTheDeviceHasAUniqueDeviceIdentifier
* udiCarrier ^requirements = """The device **SHOULD** have a UDI.
The [Unique Device Identification System](https://www.fda.gov/medical-devices/unique-device-identification-system-udi-system/udi-basics)
(UDI System) enables users of device related data to identify the devices providing measurements
and enables analysis of device data with regard to issues, errors, accuracy, et cetera.

NOTE: The UDI **SHOULD** be the primary identifier for the device

See [System Data: The Device Has a Unique Device Identifier](system_attributes.html#device_identifier)"""
* udiCarrier MS
* udiCarrier 1..*
* udiCarrier.deviceIdentifier ^requirements = """The device **SHOULD** have a UDI.
The [Unique Device Identification System](https://www.fda.gov/medical-devices/unique-device-identification-system-udi-system/udi-basics)
(UDI System) enables users of device related data to identify the devices providing measurements
and enables analysis of device data with regard to issues, errors, accuracy, et cetera.

NOTE: The UDI **SHOULD** be the primary identifier for the device

See [System Data: The Device Has a Unique Device Identifier](system_attributes.html#device_identifier)"""
* udiCarrier.deviceIdentifier MS
* udiCarrier.deviceIdentifier 1..1
