Profile: HRexProvenance
Parent: USCoreProvenance
Id: hrex-provenance
Title: "HRex Provenance Profile"
Description: "Additional constraints on US Core Provenance to ensure it meets payer needs, including indicating when the event occurred and retaining signatures if present"
* ^status = #draft
* target.reference 1.. MS
//  * value 1.. MS
* occurred[x] MS
  * ^min = 0
* signature MS