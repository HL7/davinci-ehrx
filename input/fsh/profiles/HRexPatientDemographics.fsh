Profile: HRexPatientDemographics
Parent: Patient
Id: hrex-patient-demographics
Title: "HRex Member Match Patient"
Description: "Defines constraints on the patient resource for transmission of minimal demographic information needed for $member-match."
* ^extension[$standard-status].valueCode = #draft
* ^extension[$fmm].valueInteger = 0
* ^experimental = false
* ^status = #draft
* obeys hrex-pat-1
* . ^definition = "HRex Patient Demographics Profile is tailored to support the majority of use cases requiring either gender or birthSex extension. For particular use cases that does not require either elements, creating a new profile derived from the base Patient resource is recommended (ensuring it’s adjusted to specific needs and constraints)."
  * ^mustSupport = false
* extension contains $us-core-birthsex named us-core-birthSex 0..1 MS
* identifier ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "$this"
  * ^slicing.rules = #open
* identifier contains umb 0..1 MS
* identifier[umb] ^short = "Unique Member Identifier. This is required to be present for the 'new' coverage and be absent for the 'old' coverage."
  * ^comment = "This is the unique member identifier of the server on which a 'match' is sought"
  * ^patternIdentifier.type = $hrex-temp#UMB
* name 1..* MS
* name only HumanName
  * family 1..1 MS
  * family only string
  * given 1..* MS
  * given only string
* gender 0..1 MS
* gender only code
* gender from AdministrativeGender (required)
* birthDate 1..1 MS
* birthDate only date
* address 0..* MS
  * line 0..* MS
  * city 0..1 MS
  * state 0..1 MS
  * postalCode 0..1 MS
  * period 0..1 MS

Invariant: hrex-pat-1
Description: "Patient gender or birthSex extension SHALL be present"
Severity: #error
Expression: "gender.exists() or extension('http://hl7.org/fhir/us/core/StructureDefinition/us-core-birthsex').exists()"