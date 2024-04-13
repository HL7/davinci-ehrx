Profile: HRexMemberMatchRequestParameters
Parent: Parameters
Id: hrex-parameters-member-match-in
Title: "HRex Parameters - Member Match Request Profile"
Description: """The Parameters profile for Da Vinci Find Member using Patient and Coverage Resources Request. The resource must contain: 
  * MemberPatient - HRex Patient containing member demographics 
  * CoverageToMatch - details of prior health plan coverage provided by the member, typically from their health plan coverage card 
  * CoverageToLink - details of new or prospective health plan coverage, provided by the health plan based upon the member's enrollment"""
* parameter ..4 MS
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "name"
  * ^slicing.rules = #closed
* parameter contains
    memberPatient 1..1 MS and
    CoverageToMatch 1..1 MS and
    CoverageToLink 0..1 MS and
    Consent 0..1
* parameter[memberPatient]
  * name = "MemberPatient" (exactly)
  * name MS
  * resource 1.. MS
  * resource only HRexPatientDemographics
* parameter[CoverageToMatch]
  * name = "CoverageToMatch" (exactly)
  * name MS
  * resource 1.. MS
  * resource only HRexCoverage
* parameter[CoverageToLink]
  * name = "CoverageToLink" (exactly)
  * name MS
  * resource 1.. MS
  * resource only HRexCoverage
* parameter[Consent]
  * name = "Consent" (exactly)
  * name MS
  * resource 1.. MS
  * resource only HRexConsent