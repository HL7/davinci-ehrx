Instance: member-match
InstanceOf: OperationDefinition
Title: "HRex Member Match Operation"
Usage: #definition
* url = "http://hl7.org/fhir/us/davinci-hrex/OperationDefinition/member-match"
* name = "MemberMatch"
* title = "HRex Member Match Operation"
* status = #active
* kind = #operation
* description = "The **$member-match** operation that can be invoked by either a payer or an EHR or other system, allows one health plan to retrieve a unique identifier for a member from another health plan using a member's demographic and coverage information.  This identifier can then be used to perform subsequent queries and operations. Members implementing a deterministic match will require a match on member id or subscriber id at a minimum (i.e. A pure demographic match will not be supported by such implementations.)."
* affectsState = true
* code = #member-match
* resource = #Patient
* system = false
* type = true
* instance = false
* inputProfile = "http://hl7.org/fhir/us/davinci-hrex/StructureDefinition/hrex-parameters-member-match-in"
* outputProfile = "http://hl7.org/fhir/us/davinci-hrex/StructureDefinition/hrex-parameters-member-match-out"
* parameter[0]
  * insert parameter(#MemberPatient, #in, 1, "1", #Resource, "Parameter submitted by the new plan **SHALL** contain US Core Patient containing member demographics.")
  * referencedFrom[0]
    * source = "CoverageToMatch"
    * sourceId = "beneficiary"
  * referencedFrom[+]
    * source = "CoverageToLink"
    * sourceId = "beneficiary"
* parameter[+]
  * insert parameter(#Consent, #in, 0, "1", #Resource, "Consent held by the system seeking the match that grants permission to access the patient information information on the system for whom a patient is sought.  Downstream IGs could tighten this to 'required' if necessary.")
* parameter[+]
  * insert parameter(#CoverageToMatch, #in, 1, "1", #Resource, "Parameter that identifies the coverage to be matched by the receiving payer.  It contains the coverage details of health plan coverage provided by the member\, typically from their health plan coverage card.")
* parameter[+]
  * insert parameter(#CoverageToLink, #in, 0, "1", #Resource, "Parameter that identifies the coverage information of the member as they are known by the requesting payer.  This information allows the matching payer to link their member coverage information to that of the requesting payer to ease subsequent exchanges\, including evaluating authorization to share information in subsequent queries.  This parameter is optional as this operation might be invoked by non-payer systems.  However\, it is considered 'mustSupport'.  If the client invoking the operation is a payer\, they **SHALL** include their coverage information for the member when invoking the operation.")
* parameter[+]
  * insert parameter(#MemberIdentifier, #out, 1, "1", #Identifier, "This is the member identifier information for the patient as known by the server that is the target of the operation.")
* parameter[+]
  * insert parameter(#MemberId, #out, 0, "1", #Reference, "This is the RESTful identity for the patient as known by the server that is the target of the operation.")