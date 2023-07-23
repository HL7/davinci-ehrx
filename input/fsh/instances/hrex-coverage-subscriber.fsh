Instance: hrex-coverage-subscriber
InstanceOf: SearchParameter
Title: "Coverage subscriber Search Parameter"
Usage: #definition
* url = "http://hl7.org/fhir/us/davinci-hrex/SearchParameter/hrex-coverage-subscriber"
* name = "HRexCoverageSubscriber"
* derivedFrom = "http://hl7.org/fhir/SearchParameter/Coverage-subscriber"
* status = #active
* experimental = false
* description = "Reference to the subscriber\n\n**NOTE**: This HRex SearchParameter definition extends the usage context of the [capabilitystatement-expectation](http://hl7.org/fhir/R4/extension-capabilitystatement-expectation.html) extension to formally express implementer expectations for these elements:\n\n* multipleAnd\n\n* multipleOr\n\n* modifier\n\n* comparator\n\n* chain"
* jurisdiction = urn:iso:std:iso:3166#US
* code = #subscriber
* base = #Coverage
* type = #reference
* expression = "Coverage.subscriber"
* xpath = "f:Coverage/f:subscriber"
* xpathUsage = #normal
* target[0] = #Patient
* target[+] = #RelatedPerson
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