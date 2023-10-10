Profile: HRexReference
Parent: Reference
Id: hrex-reference
Title: "HRex Reference Profile"
Description: "This HRex Reference Profile defines the common patterns for using a Reference in HRex profiles, ensuring that both a URI reference and an identifier are always present, and that the display element is must support."
* ^status = #draft
* . ^mustSupport = false
  * ^isModifier = false
* reference 1..1
* identifier 1..1 
* display 0..1 MS

