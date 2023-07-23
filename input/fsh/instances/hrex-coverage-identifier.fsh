Instance: hrex-coverage-identifier
InstanceOf: SearchParameter
Title: "Coverage identifier Search Parameter"
Usage: #definition
* url = "http://hl7.org/fhir/us/davinci-hrex/SearchParameter/hrex-coverage-identifier"
* name = "HRexCoverageIdentifier"
* derivedFrom = "http://hl7.org/fhir/SearchParameter/Coverage-identifier"
* status = #active
* experimental = false
* description = "The primary identifier of the insured and the coverage\n\n**NOTE**: This HRex SearchParameter definition extends the usage context of the [capabilitystatement-expectation](http://hl7.org/fhir/R4/extension-capabilitystatement-expectation.html) extension to formally express implementer expectations for these elements:\n\n* multipleAnd\n\n* multipleOr\n\n* modifier\n\n* comparator\n\n* chain"
* jurisdiction = urn:iso:std:iso:3166#US
* code = #identifier
* base = #Coverage
* type = #token
* expression = "Coverage.identifier"
* xpath = "f:Coverage/f:identifier"
* xpathUsage = #normal
* multipleOr = true
  * extension[$cs-expectation].valueCode = #SHOULD
* modifier[0] = #missing
  * extension[$cs-expectation].valueCode = #MAY
* modifier[+] = #text
  * extension[$cs-expectation].valueCode = #MAY
* modifier[+] = #not
  * extension[$cs-expectation].valueCode = #MAY
* modifier[+] = #ofType
  * extension[$cs-expectation].valueCode = #SHOULD