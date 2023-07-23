Instance: Task-min
InstanceOf: HRexTaskDataRequest
Title: "HRex Task minimal example"
Description: "An example showing a minimally populated HRex Task Data Request instance"
Usage: #example
* id = "min"
* status = #requested
* intent = #order
* code = $hrex-temp#data-request
* for = Reference(http://example.org/new-payer/fhir/Patient/pat1)
* authoredOn = "2020-07-30T20:07:15-06:00"
* requester = Reference(http://example.org/new-payer/fhir/Organization/hl7pay)
* owner = Reference(http://example.org/provider/fhir/Organization/hl7prov)
* input
  * type = $hrex-temp#data-query
  * valueString = "Condition?patient=Patient/pat1&clinical-status=active&code=http%3A%2F%2Fsnomed.info%2Fsct%7C73211009"