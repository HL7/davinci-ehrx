Profile: HRexOrganization
Parent: USCoreOrganizationProfile
Id: hrex-organization
Title: "HRex Organization Profile"
Description: "Additional Da Vinci constraints on organization - to represent either provider organizations or payers"
* ^status = #draft
* . ^mustSupport = false
  * ^isModifier = false
* identifier 1..
  * ^comment = "It is preferred to use an NPI and if an NPI is available, it SHALL be included.  However, tax id or CCN (or even other identifier schemes) can be used if an NPI is not available"
* identifier contains
    tin 0..1 MS and
    ccn 0..1 MS
* identifier[tin] ^patternIdentifier.system = "urn:oid:2.16.840.1.113883.4.4"
* identifier[ccn] ^patternIdentifier.system = "http://terminology.hl7.org/NamingSystem/CMSCertificationNumber"