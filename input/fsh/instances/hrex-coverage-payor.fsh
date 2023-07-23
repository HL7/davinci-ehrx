Instance: hrex-coverage-payor
InstanceOf: SearchParameter
Title: "Coverage payer Search Parameter"
Usage: #definition
* url = "http://hl7.org/fhir/us/davinci-hrex/SearchParameter/hrex-coverage-payor"
* name = "HRexCoveragePayor"
* derivedFrom = "http://hl7.org/fhir/SearchParameter/Coverage-payor"
* status = #active
* experimental = false
* description = "The identity of the insurer or party paying for services\n\n**NOTE**: This HRex SearchParameter definition extends the usage context of the [capabilitystatement-expectation](http://hl7.org/fhir/R4/extension-capabilitystatement-expectation.html) extension to formally express implementer expectations for these elements:\n\n* multipleAnd\n\n* multipleOr\n\n* modifier\n\n* comparator\n\n* chain"
* jurisdiction = urn:iso:std:iso:3166#US
* code = #payor
* base = #Coverage
* type = #reference
* expression = "Coverage.payor"
* xpath = "f:Coverage/f:payor"
* xpathUsage = #normal
* target = #Organization
* multipleOr = true
  * extension[$cs-expectation].valueCode = #MAY
* modifier[0] = #text
  * extension[$cs-expectation].valueCode = #MAY
* modifier[+] = #not
  * extension[$cs-expectation].valueCode = #MAY
* modifier[+] = #type
  * extension[$cs-expectation].valueCode = #MAY
* modifier[+] = #identifier
  * extension[$cs-expectation].valueCode = #SHOULD
* chain = "identifier"
  * extension[$cs-expectation].valueCode = #SHALL