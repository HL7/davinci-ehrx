Profile: HRexStructureDefinition
Parent: StructureDefinition
Id: hrex-structuredefinition
Title: "HRex Profile Rules"
Description: "This HRex Profile on StructureDefinition defines best practices to be followed by all Da Vinci profiles."
* differential.element
  * obeys hrex-sd-2
  * obeys hrex-sd-3
* snapshot.element
  * obeys hrex-sd-1

Invariant: hrex-sd-1
Description: "Any must-support element of type Reference SHOULD declare a profile that will enforce whether 'reference' and/or 'identifier' are required"
Severity: #warning
Expression: "mustSupport and type.exists(code='Reference') implies type.where(code='Reference').profile.exists()"

Invariant: hrex-sd-2
Description: "Elements mentioned in the differential SHOULD either be marked mustSupport or should have a declared 'pattern'"
Severity: #warning
Expression: "id.trace('id') in %resource.differential.element.id implies (mustSupport.empty() and pattern.empty()).not()"

Invariant: hrex-sd-3
Description: "Test"
Severity: #error
Expression: "false"
