Profile: HRexMemberMatchResponseParameters
Parent: Parameters
Id: hrex-parameters-member-match-out
Title: "HRex Parameters - Member Match Response Profile"
Description: """The Parameters profile for Da Vinci Find Member using Identifier datatype Response.  The old health plan **SHALL** return the following data if records for member are found: 
 * The unique member identifier (denoted through identifier parameter) submitted by the new health plan."""
* parameter ..1 MS
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "name"
  * ^slicing.rules = #closed
* parameter contains MemberIdentifier 1..1 MS
* parameter[MemberIdentifier]
  * name = "MemberIdentifier" (exactly)
  * name MS
  * valueIdentifier 1.. MS
  * valueIdentifier only Identifier
    * type 1.. MS
    * type = $v2-0203#MB
    * value 1.. MS