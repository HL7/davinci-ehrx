Profile: HRexMemberMatchResponseParameters
Parent: Parameters
Id: hrex-parameters-member-match-out
Title: "HRex Parameters - Member Match Response Profile"
Description: """The Parameters profile for Da Vinci Find Member using Identifier datatype Response.  The old health plan **SHALL** return the following data if records for member are found: 
 * The unique member identifier (denoted through identifier parameter) submitted by the new health plan."""
* parameter ..3 MS
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "name"
  * ^slicing.rules = #closed
* parameter contains MemberIdentifier 1..1 MS
* parameter contains MemberId 0..1
* parameter contains Reference 0..1
* parameter[MemberIdentifier]
  * name = "MemberIdentifier" (exactly)
  * name MS
  * valueIdentifier 1.. MS
  * valueIdentifier only Identifier
    * type 1.. MS
    * type = $hrex-temp#UMB
    * value 1.. MS
* parameter[MemberId]
  * name = "MemberId" (exactly)
  * name MS
  * valueReference 1.. MS
  * valueReference only Reference(HRexPatientDemographics)
    * ^type.profile = "http://hl7.org/fhir/us/davinci-hrex/StructureDefinition/hrex-reference-rest"
* parameter[Reference]
  * name = "Reference" (exactly)
  * ^short = "RESTful reference"