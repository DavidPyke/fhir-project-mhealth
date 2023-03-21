Profile: DeviceIdentifierRequirements
Title: "Device Identifier Requirements"
Parent: Device
Description: """The device that performs a measurement shall be uniquely identified.

Each type of device has attributes with regard to precision, accuracy and quality that
can impact the interpretation of measurements taken by the device.  Knowledge of the
device helps greatly in interpreting the results.

See [System Data: Device Can be Identified](system_attributes.html#device_identifier)"""
* ^abstract = true
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#001 "World"
* insert DeviceIdentifierDeviceIdentifierIsUnique

RuleSet: DeviceIdentifierDeviceIdentifierIsUnique
* identifier ^requirements = """The device identifier **SHALL** be unique within the namespace defined by the system(Device + App + Infrastructure).
The point of this assessment is that the mechanism by which devices are identified
be sufficient to demonstrate that identifiers are unique.  The device identifier can be
a unique device identifier (UDI), a MAC or physical network address (e.g., the BlueTooth device
address), or some other unique identifier that only applies to a single device.

See [System Data: Device Identifier is Unique](system_attributes.html#device_identifier)"""
* identifier MS
* identifier 1..1
