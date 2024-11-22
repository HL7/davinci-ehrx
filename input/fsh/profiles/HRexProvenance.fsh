Profile: HRexProvenance
Parent: USCoreProvenance|7.0.0
Id: hrex-provenance
Title: "HRex Provenance Profile"
Description: "Additional constraints on US Core Provenance to ensure it meets payer needs, including indicating when the event occurred and retaining signatures if present"
* ^extension[$compliesWithProfile].valueCanonical = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-provenance|6.1.0"
* ^status = #active
* target.reference 1..
* occurred[x] MS
  * ^min = 0
* signature MS