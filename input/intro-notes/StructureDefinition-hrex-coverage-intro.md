In most cases, Da Vinci will use the [US Core Coverage profile]({{site.data.fhir.ver.uscore7}}/StructureDefinition-us-core-coverage.html) when communicating Coverage.

This profile is intended for use ONLY during the [$member-match](OperationDefinition-member-match.html) operation.  It differs from the US Core profile in that the referenced 'Patient' resource does not need to have an identifier (as when calling $member-match, no identifier will be known).
