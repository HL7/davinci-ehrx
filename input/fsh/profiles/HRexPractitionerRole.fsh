Profile: HRexPractitionerRole
Parent: USCorePractitionerRoleProfile|6.1.0
Id: hrex-practitionerrole
Title: "HRex PractitionerRole Profile"
Description: "Constraints on the US Core PractitionerRole requiring the use of Da Vinci Organization and Practitioner"
* ^extension[$compliesWithProfile].valueCanonical = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitionerrole|3.1.1"
* ^status = #active
* code
  * ^comment = "...  A concept map for converting between the US Core 3.1.1 and 6.1.0 value sets can be found [here](ConceptMap-NUCC-CareTeamMemberFunction.html)"
* obeys hrex-pr-1
//  * extension[$additional-binding]
//    * extension[purpose].value = #extensible
//    * extension[valueSet].value = http://hl7.org/fhir/us/core/ValueSet/us-core-provider-role|3.1.0
* practitioner 1..
* practitioner only Reference(HRexPractitioner)
* organization 1..
* organization only Reference(HRexOrganization)

Invariant: hrex-pr-1
Description: "If present, practitioner role should also be from US Core 3.1.1 value set"
Severity: #warning
Expression: "code.exists() implies code.memberOf('http://hl7.org/fhir/us/core/ValueSet/us-core-provider-role|3.1.0')"
