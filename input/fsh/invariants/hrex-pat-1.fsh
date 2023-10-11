Invariant: hrex-pat-1
Description: "Patient gender or birthSex extension SHALL be present"
Severity: #error
Expression: "gender.exists() or extension('http://hl7.org/fhir/us/core/StructureDefinition/us-core-birthsex').exists()"