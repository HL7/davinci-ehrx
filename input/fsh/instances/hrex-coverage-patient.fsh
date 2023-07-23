Instance: hrex-coverage-patient
InstanceOf: SearchParameter
Title: "Coverage patient Search Parameter"
Usage: #definition
* url = "http://hl7.org/fhir/us/davinci-hrex/SearchParameter/hrex-coverage-patient"
* name = "HRexCoveragePatient"
* derivedFrom = "http://hl7.org/fhir/SearchParameter/Coverage-patient"
* status = #active
* experimental = false
* description = "Retrieve coverages for a patient\n\n**NOTE**: This HRex SearchParameter definition extends the usage context of the [capabilitystatement-expectation](http://hl7.org/fhir/R4/extension-capabilitystatement-expectation.html) extension to formally express implementer expectations for these elements:\n\n* multipleAnd\n\n* multipleOr\n\n* modifier\n\n* comparator\n\n* chain"
* jurisdiction = urn:iso:std:iso:3166#US
* code = #patient
* base = #Coverage
* type = #reference
* expression = "Coverage.beneficiary"
* xpath = "f:Coverage/f:beneficiary"
* xpathUsage = #normal
* target = #Patient
* multipleOr = true
  * extension[$cs-expectation].valueCode = #MAY
* multipleAnd = true
  * extension[$cs-expectation].valueCode = #MAY
* modifier[0] = #missing
  * extension[$cs-expectation].valueCode = #MAY
* modifier[+] = #text
  * extension[$cs-expectation].valueCode = #MAY
* modifier[+] = #not
  * extension[$cs-expectation].valueCode = #MAY
* modifier[+] = #type
  * extension[$cs-expectation].valueCode = #MAY
* modifier[+] = #identifier
  * extension[$cs-expectation].valueCode = #SHOULD
* chain[0] = "name"
  * extension[$cs-expectation].valueCode = #SHALL
* chain[+] = "gender"
  * extension[$cs-expectation].valueCode = #SHALL
* chain[+] = "birthdate"
  * extension[$cs-expectation].valueCode = #SHALL 