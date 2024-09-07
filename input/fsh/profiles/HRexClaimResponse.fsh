Profile: HRexClaimResponse
Parent: ClaimResponse
Id: hrex-claimresponse
Title: "HRex Prior authorization"
Description: "This profile specifies constraints on ClaimResponse resource to reflect the contents of a pro-active prior authorization returned via a card"
* ^extension[$compliesWithProfile].valueCanonical = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-coverage|6.1.0"
* ^extension[$standard-status].valueCode = #draft
* ^extension[$fmm].valueInteger = 0
* ^status = #draft
* ^experimental = false
* . ^short = "Prior authorization"
  * ^mustSupport = false
* status only code
* status = #active (exactly)
* type MS
* use only code
* use MS
* patient only Reference(USCorePatientProfile|7.0.0)
* patient MS
* created MS
* insurer only Reference(HRexOrganization)
* insurer MS
* outcome MS
* preAuthRef 1..1 MS
  * ^short = "PA Number/Identifier"
* preAuthPeriod MS
  * ^short = "Certification Effective Date and Certification End Date"
* addItem MS
  * extension contains
      ItemTraceNumber named itemTraceNumber 0..* MS and
      PreAuthIssueDate named preAuthIssueDate 0..1 MS and
      AuthorizedDate named authorizedDate 0..1 MS and
      AuthorizedProvider named authorizedProvider 0..1 MS
  * productOrService MS
  * modifier MS
  * serviced[x] MS
  * location[x] only CodeableConcept
  * location[x] MS
  * quantity MS
  * unitPrice MS