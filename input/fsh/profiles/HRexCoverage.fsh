Profile: HRexCoverage
Parent: Coverage
Id: hrex-coverage
Title: "HRex Coverage Profile"
Description: "The HRex Coverage Profile defines the constraints for representing a member's healthcare insurance information to the Payer.  Coverage instances complying with this profile, sometimes together with the Patient which this profile references via `beneficiary`, allows a payer to identify a member in their system."
* ^status = #active
* ^experimental = false
* obeys hrex-cov-1
* . ^definition = "This is the Coverage profile which is used to provide insurance information for scheduling an appointment and/or registering a patient."
  * ^mustSupport = false
* identifier 0..1 MS
  * ^short = "Also known as Member identifier"
  * ^comment = "This must be filled in when known"
  * value 1..1 MS
  * value only string
    * ^short = "The value that is unique within the system."
* policyHolder only Reference(USCorePatientProfile or HRexOrganization or RelatedPerson)
  * ^comment = "When the Coverage pertains to Children and Family Services, `policyHolder` should reference Organization (or another suitable entity) representing them. It acts as the holder of the policy and is responsible for the management and oversight of the coverage."
* subscriber only Reference(USCorePatientProfile)
* subscriberId ..1 MS
  * ^short = "Subscriber ID"
  * ^requirements = "The subscriber Id is a number that is needed by the payer to associate the attestation with the member in their system."
* beneficiary only Reference(HRexPatientDemographics)
* beneficiary MS
  * ^comment = "When the Coverage pertains to Children and Family Services, `beneficiary` should reference individual members under the policy (such as children or family members) that are entitled to claim benefits."
  * ^requirements = "This would usually be the US Core Patient Resource for which the service was performed."
* dependent only string
* dependent MS
* payor 1..1 MS
* payor only Reference(HRexOrganization)
  * ^comment = "... When sending payer, it may either be a reference to a record stored on a mutually accessible registry, or the Reference.display and Reference.identifier elements can be used to convey the payer's name and identifer."
* class ^slicing.discriminator.type = #pattern
  * ^slicing.discriminator.path = "type"
  * ^slicing.rules = #open
* class contains group 0..1 MS
* class[group]
  * type 1..1 MS
  * type only CodeableConcept
  * type = $coverage-class#group
  * value 1..1 MS

Invariant: hrex-cov-1
Description: "Coverage.identifier or Coverage.subscriberId SHALL be present"
Severity: #error
Expression: "identifier.exists() or subscriberId.exists()"
XPath: "f:identifier or f:subscriberId"