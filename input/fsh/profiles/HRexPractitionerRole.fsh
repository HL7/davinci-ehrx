Profile: HRexPractitionerRole
Parent: USCorePractitionerRoleProfile
Id: hrex-practitionerrole
Title: "HRex PractitionerRole Profile"
Description: "Constraints on the US Core PractitionerRole requiring the use of Da Vinci Organization and Practitioner"
* ^status = #draft
* practitioner only Reference(HRexPractitioner)
* organization only Reference(HRexOrganization)