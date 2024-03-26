
Instance: NUCC-CareTeamMemberFunction
InstanceOf: ConceptMap
Title: "NUCC to SNOMED Care Team Member Function Map"
Description: "A mapping between the US Core 3.1.1 and 6.1.0 PractitionerRole.code value sets"
Usage: #definition
* name = "NUCCCareTeamMemberFunctionMap"
* status = #active
* experimental = false
//* sourceCanonical = http://hl7.org/fhir/us/core/ValueSet/us-core-provider-role
* sourceCanonical = "http://hl7.org/fhir/us/core/ValueSet/us-core-provider-role"
* targetCanonical = "http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1099.30"
* group[+]
  * source = $provider-taxonomy
  * target = $sct
  * insert map(#101Y00000X, [[Counselor]], #equivalent, #224595007, [[Professional counselor (occupation)]])
  * insert map(#102L00000X, [[Psychoanalyst]], #equivalent, #224600003, [[Psychoanalyst (occupation)]])

// TODO: Finish the rest