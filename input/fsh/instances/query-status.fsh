Instance: query-status
InstanceOf: HRexTaskDataRequest
Title: "HRex Task Data Request - status query example"
Description: "An example showing a 'query' data request task after it has been accepted and is showing a 'progress' status"
Usage: #example
* basedOn = Reference(http://example.org/new-payer/CommunicationRequest/57)
* status = #in-progress
* businessStatus.text = "Results will be reviewed for release on Monday"
* intent = #order
* code = $hrex-temp#data-request
* for = Reference(http://example.org/new-payer/fhir/Patient/pat1)
* authoredOn = "2020-07-30T20:07:15-06:00"
* requester = Reference(http://example.org/new-payer/fhir/Organization/hl7pay)
* owner = Reference(http://example.org/provider/fhir/Organization/hl7prov)
* reasonCode.text = "Support prior authorization decision-making"
* reasonReference = Reference(http://example.org/new-payer/fhir/Claim/123)
* input
  * type = $hrex-temp#data-query
  * valueString = "Condition?patient=Patient/pat1&clinical-status=active&code=http%3A%2F%2Fsnomed.info%2Fsct%7C73211009"