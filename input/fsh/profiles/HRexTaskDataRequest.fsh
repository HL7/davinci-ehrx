Profile: HRexTaskDataRequest
Parent: Task
Id: hrex-task-data-request
Title: "HRex Task Data Request Profile"
Description: "This Task profile is used to solicit information from a system when direct query is not possible and human intervention might be required"
* ^status = #active
* ^experimental = false
* obeys tdr-1 and tdr-2 and tdr-3
* . ^definition = "This Task profile is used to solicit information from a system when direct query is not possible and human intervention might be required"
* basedOn MS
  * ^short = "Authorization for data request"
  * ^requirements = "Indicates the order (ServiceRequest, CommunicationRequest, etc.) that authorizes the data request"
* status MS
* status from HRexTaskStatus (required)
* statusReason MS
  * ^requirements = "Indicates why task failed or was rejected."
  * text 1.. MS
* businessStatus MS
  * ^short = "E.g. 'waiting on internal review'"
  * ^comment = "Conveys the internal business progress of the request and provides more nuance than the overall status.  There is no expectation this will be coded, but negotiation of agreed codes can be used between partners"
  * ^requirements = "Indicates progress in retrieving the data"
  * text 1.. MS
* intent = #order (exactly)
* intent MS
* code 1.. MS
* code = $hrex-temp#data-request
* focus 0..0
  * ^short = "What task is acting on"
* for 1.. MS
* for only Reference(USCorePatientProfile|6.1.0)
  * ^short = "Member being queried"
  * ^comment = "Queries must always be in the scope of a single member"
* authoredOn 1.. MS
* requester 1.. MS
* requester only Reference(HRexOrganization or USCorePractitionerProfile)
  * ^short = "Who is asking for data"
* owner 1.. MS
* owner only Reference(HRexOrganization or USCorePractitionerProfile)
  * ^short = "Who is being asked for data"
* reasonCode MS
  * ^comment = "Only text is expected, though codes can be used for partners with agreed value sets"
  * ^requirements = "Indicates why the information request is occurring"
  * text 1.. MS
* reasonReference only Reference(Claim or HRexCoverage)
* reasonReference MS
  * ^comment = "Likely targets would be HRex Coverage, PCDE Claim (for prior authorization) or a bare Claim resource for referencing an actual Claim."
  * ^requirements = "Indicates why the information request is occurring"
* input 1.. MS
  * ^slicing.discriminator.type = #pattern
  * ^slicing.discriminator.path = "type"
  * ^slicing.rules = #open
* input contains
    query 0..1 MS and
    code 0..1 MS
* input[query] ^short = "Requested query"
  * ^definition = "Indicates the specific FHIR RESTful query to be executed"
  * ^comment = "This will contain the text that goes after the '?' when executing the query."
  * type = $hrex-temp#data-query
  * type MS
  * value[x] only string
  * value[x] MS
    * ^short = "query value"
* input[code] ^short = "Requested data code"
  * ^definition = "A code indicating the type of data/document to be returned"
  * ^comment = "This might be a document code or other code describing the requested information.  If no appropriate standard code exists, local codes can be used between partners, or a human-readable textual description of the desired data can be provided.  Downstream profiles may tighten expectations for this element."
  * type = $hrex-temp#data-code
  * type MS
  * value[x] only CodeableConcept
  * value[x] MS
    * ^short = "query value"
* output MS
  * ^slicing.discriminator.type = #pattern
  * ^slicing.discriminator.path = "type"
  * ^slicing.rules = #open
* output contains data 0..* MS
* output[data] ^short = "Requested data"
  * ^definition = "The data content requested.  Multiple repetitions are permitted in the event that a single request returns multiple instances and packaging in a Bundle is not necessary/approrpriate.  Also, in most cases Provenance instances should accompany returned data so that the requester can best integrate and allocate trust/confidence to the provided data."
  * type = $hrex-temp#data-value
  * type MS
  * value[x] only Reference
  * value[x] MS
    * ^short = "data reference"
    * ^comment = "The referenced data might be contained within the Task (if it doesn't have/shouldn't have independent persistence), but can also refer to data stored elsewhere - either on the owner's system or some other system.  Note that all returned data **SHOULD** comply with appropriate US-Core and/or Da Vinci profiles."

Invariant: tdr-1
Description: "Must have exactly one input that is data-query or data-code"
Severity: #error
Expression: "input.type.where(coding.where(system='http://hl7.org/fhir/us/davinci-hrex/CodeSystem/hrex-temp' and (code='data-code' or code='data-query')).exists()).count()=1"

Invariant: tdr-2
Description: "Task statusReason SHALL be populated if status is 'rejected' or 'failed'"
Severity: #error
Expression: "(status = 'rejected' or status = 'failed') implies statusReason.exists()"

Invariant: tdr-3
Description: "Task output SHALL be populated if status is 'completed'"
Severity: #error
Expression: "(status = 'completed') implies output.exists()"