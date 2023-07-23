Instance: Coverage-full
InstanceOf: HRexCoverage
Title: "HRex Coverage full example"
Description: "An example showing a fully populated HRex Coverage instance"
Usage: #example
* id = "full"
* identifier
  * system = "http://example.org/new-payer/identifiers/coverage"
  * value = "234567"
* status = #active
* subscriberId = "97531"
* beneficiary = Reference(http://example.org/new-payer/fhir/Patient/pat1)
* payor = Reference(Organization/full)