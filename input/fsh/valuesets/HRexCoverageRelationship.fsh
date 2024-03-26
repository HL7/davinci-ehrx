ValueSet: HRexCoverageRelationship
Id: hrex-coverage-relationship
Title: "HRex Coverage Relationship ValueSet"
Description: "Adds 'unknown' to the list of standard coverage relationship types"
* ^extension[$standard-status].valueCode = #draft
* ^extension[$fmm].valueInteger = 0
* ^status = #draft
* ^experimental = false
* include codes from valueset http://hl7.org/fhir/ValueSet/subscriber-relationship
* include $dar#unknown