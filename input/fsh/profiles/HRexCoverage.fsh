Profile: HRexCoverage
Parent: Coverage
Id: hrex-coverage
Title: "HRex Member Match Coverage Profile"
Description: "The HRex Coverage Profile defines the constraints for representing a member's healthcare insurance information to the Payer for member match purposes. Coverage instances complying with this profile, sometimes together with the Patient which this profile references via `beneficiary`, allows a payer to identify a member in their system.  It aligns with the equivalent US Core profile, but diverges in that it does not require Patient.identifier for the beneficiary."
* ^status = #active
* ^experimental = false
* obeys us-core-15
* . ^definition = "This is the Coverage profile which is used to provide insurance information for scheduling an appointment and/or registering a patient."
  * ^mustSupport = false
* identifier MS
  * ^short = "Member ID and other identifiers"
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "type"
  * ^slicing.rules = #open
* identifier contains memberid 0..1 MS
* identifier[memberid]
  * ^short = "Member ID"
  * ^condition = us-core-15
  * type = $v2-0203#MB
    * ^short = "Member Number identifier type"
  * value 1..1 MS
* status MS
  * ^comment = "The `Coverage.status` alone does not indicate whether an individual's coverage is terminated or that the individual is not covered. The `Coverage.period` needs to be considered as well."  
* type MS
  * ^comment = "Identifies if the coverage is PPO, HMO, POS, etc."
* type from http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.114222.4.11.3591 (extensible)
  * ^binding.description = "US Public Health Data Consortium Source of Payment Codes"
// Todo: constrain & extend type
* policyHolder MS
* policyHolder only Reference(USCorePatientProfile|6.1.0 or HRexOrganization or USCoreRelatedPersonProfile|6.1.0)
  * ^comment = "When the Coverage pertains to organizations such as Children and Family Services, `policyHolder` should reference Organization (or another suitable entity) representing them. It acts as the holder of the policy and is responsible for the management and oversight of the coverage."
// Added policyholder
* subscriberId MS
  * ^short = "Subscriber ID"
  * ^comment = "The identifier assigned by the Payer on the subscriber's ID card"
  * ^condition = us-core-15
* beneficiary only Reference(HRexPatientDemographics)
// Substituted from US core
* beneficiary MS
  * ^comment = "When the Coverage pertains to Children and Family Services, `beneficiary` should reference individual members under the policy (such as children or family members) that are entitled to claim benefits."
  * ^requirements = "This would usually be the US Core Patient Resource for which the service was performed, however US Core requires an identifier, and that won't necessarily be available/relevant when coverage is being between payers"
* dependent only string
* dependent MS
* relationship 1.. MS
* relationship from HRexCoverageRelationship
* period MS
  * ^comment = "Date that the contract became effective and date that the contract was terminated or coverage changed."
* payor 1..1 MS
* payor only Reference(HRexOrganization)
  * ^comment = "... When sending payer, it may either be a reference to a record stored on a mutually accessible registry, or the Reference.display and Reference.identifier elements can be used to convey the payer's name and identifer."
  * ^requirements = "... In Da Vinci, we're only concerned with insurance coverage.  Because self-pay is not relevant, this is limited to organizations only"
* class ^slicing.discriminator.type = #pattern
  * ^slicing.discriminator.path = "type"
  * ^slicing.rules = #open
// Class overall isn't MS
* class contains group 0..1 MS
* class contains plan 0..1 MS
* class[group]
  * ^short = "Group"
  * type 1..1 MS
  * type only CodeableConcept
  * type = $coverage-class#group
  * value 1..1 MS
    * ^short = "Group Number"
    * ^comment = "Employer Account Number"
* class[plan]
  * ^short = "Plan"
  * type 1..1 MS
  * type only CodeableConcept
  * type = $coverage-class#plan
  * value 1..1 MS
    * ^short = "Plan Number"
    * ^comment = "Business concept used by a health plan to describe its benefit offerings"
  * name MS
    * ^short = "Plan Name"
    * ^comment = "Name of the health plan benefit offering assigned to the Plan Identifier"

Invariant: us-core-15
Description: "Member Id in Coverage.identifier or Coverage.subscriberId SHALL be present"
Severity: #error
Expression: "identifier.type.coding.where(system='http://terminology.hl7.org/CodeSystem/v2-0203' and code='MB').exists() or subscriberId.exists()"
