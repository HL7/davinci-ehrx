Instance: Coverage-full
InstanceOf: HRexCoverage
Title: "HRex Coverage full example"
Description: "An example showing a fully populated HRex Coverage instance"
Usage: #example
* id = "full"
* extension[CoverageDavinciWellknownLocation].valueUri = "http://somepayer.org/.well-known/davinci-configuration"
* identifier
  * type = $v2-0203#MB
  * system = "http://example.org/new-payer/identifiers/coverage"
  * value = "234567"
* status = #active
* type = $sop#2 "MEDICAID"
* period
  * start = "2021-01-01"
  * end = "2021-12-31"
* subscriberId = "97531"
* relationship = $subRelationship#self
* beneficiary = Reference(http://example.org/new-payer/fhir/Patient/pat1)
* payor = Reference(Organization/full)