Profile: UnitsRecommendations
Title: "Units Recommendations"
Parent: Observation
Description: """Fixed values used for units returned by the device or communicated by the App shall be documented.

See [General Observations: Value Sets for Units Used in Measurements Are Documented and Can be Mapped to Standards](numeric_observations.html#units)"""
* ^abstract = true
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#001 "World"
* insert UnitsUnitValuesUseUcum

RuleSet: UnitsUnitValuesUseUcum
* valueQuantity ^requirements = """Result values in a measurement **SHOULD** use UCUM

See [General Observations: Unit Values Use UCUM](numeric_observations.html#units)"""
* valueQuantity MS
* valueQuantity 1..1
* valueQuantity.system ^requirements = """Result values in a measurement **SHOULD** use UCUM

See [General Observations: Unit Values Use UCUM](numeric_observations.html#units)"""
* valueQuantity.system = $unitsofmeasure
