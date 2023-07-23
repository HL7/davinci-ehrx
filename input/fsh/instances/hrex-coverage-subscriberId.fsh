Instance: hrex-coverage-subscriberId
InstanceOf: SearchParameter
Title: "Coverage subscriberId Search Parameter"
Usage: #definition
* url = "http://hl7.org/fhir/us/davinci-hrex/SearchParameter/hrex-coverage-subscriberId"
* name = "HRexCoverageSubscriberId"
* status = #active
* experimental = false
* description = "ID assigned to the subscriber\n\n**NOTE**: This HRex SearchParameter definition extends the usage context of the [capabilitystatement-expectation](http://hl7.org/fhir/R4/extension-capabilitystatement-expectation.html) extension to formally express implementer expectations for these elements:\n\n* multipleAnd\n\n* multipleOr\n\n* modifier\n\n* comparator\n\n* chain"
* jurisdiction = urn:iso:std:iso:3166#US
* code = #subscriber-id
* base = #Coverage
* type = #token
* expression = "Coverage.subscriberId"
* xpath = "f:Coverage/f:subscriberId"
* xpathUsage = #normal
* multipleOr = true
  * extension[$cs-expectation].valueCode = #SHOULD
* modifier[0] = #missing
  * extension[$cs-expectation].valueCode = #MAY
* modifier[+] = #not
  * extension[$cs-expectation].valueCode = #MAY