Instance: query-complete
InstanceOf: HRexTaskDataRequest
Title: "HRex Task Data Request - completed query example"
Description: "An example showing a 'query' data request task once it has results - as a contained searchset Bundle"
Usage: #example
* contained = results
* basedOn = Reference(http://example.org/new-payer/CommunicationRequest/57)
* status = #completed
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
  * valueString = "Condition?patient=Patient/pat1&clinical-status=active&code:below=http%3A%2F%2Fsnomed.info%2Fsct%7C73211009"
* output
  * type = $hrex-temp#data-value
  * valueReference = Reference(results)