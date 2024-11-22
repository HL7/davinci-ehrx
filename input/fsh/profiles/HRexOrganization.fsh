Profile: HRexOrganization
Parent: USCoreOrganizationProfile|7.0.0
Id: hrex-organization
Title: "HRex Organization Profile"
Description: "Additional Da Vinci constraints on organization - to represent either provider organizations or payers"
* ^extension[$compliesWithProfile].valueCanonical = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-organization|6.1.0"
* ^extension[$compliesWithProfile].valueCanonical = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-organization|3.1.1"
* ^status = #active
* . ^mustSupport = false
  * ^isModifier = false
* identifier 1..
  * ^comment = "It is preferred to use an NPI and if an NPI is available, it **SHALL** be included.  However, tax id other identifier schemes can be used if an NPI is not available"
* identifier contains
    tin 0..1 MS
* identifier[tin] ^patternIdentifier.system = "urn:oid:2.16.840.1.113883.4.4"
