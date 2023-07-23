Instance: document-complete
InstanceOf: HRexTaskDataRequest
Title: "HRex Task Data Request - completed document example"
Description: "An example showing a 'code' data request task once it has results - as references to the relevant documents"
Usage: #example
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
  * type = $hrex-temp#data-code
  * valueCodeableConcept = $loinc#34108-1
* output[0]
  * type = $hrex-temp#data-value
  * valueReference = Reference(http://example.org/new-payer/fhir/DocumentReference/727A23K5133)
* output[+]
  * type = $hrex-temp#data-value
  * valueReference = Reference(http://example.org/new-payer/fhir/DocumentReference/287Q73J237)