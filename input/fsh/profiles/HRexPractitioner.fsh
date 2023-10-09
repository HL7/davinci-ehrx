Profile: HRexPractitioner
Parent: USCorePractitionerProfile
Id: hrex-practitioner
Title: "HRex Practitioner Profile"
Description: "Constraints on the US Core Practitioner profiles requiring support for qualification and requiring support for an additional identifier type"
* ^status = #draft
* identifier
  * system MS
  * value MS
* identifier ^comment = "It is preferred to use an NPI and if an NPI is available, it SHALL be provided.  However CCN (or even other identifier schemes) can be used if an NPI is not available"
* identifier contains ccn 0..1
* identifier[ccn] ^patternIdentifier.system = "http://terminology.hl7.org/NamingSystem/CMSCertificationNumber"
* qualification MS
  * ^requirements = "This element is mustSupport because qualifications can have ramifications for approving payments and billing"
  * code 1.. MS
    * ^requirements = "There is no expectation that a coded value will be present.  However, if a system has codes, it should send them in case a downstream recipient might recognize them."
    * text 1.. MS
      * ^requirements = "There is no consistency for how qualifications are currently captured, so can't agree on a standardized value set.  But we can at least expose a human-readable string.  In future releases, we may be able to move towards common terminology."