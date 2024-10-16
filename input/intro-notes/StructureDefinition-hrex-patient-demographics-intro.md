This profile is intended exclusively for use as part of the [HRex Coverage](StructureDefinition-hrex-coverage.html) profile, which in turn is intended exclusively for use with the [$member-match](OperationDefinition-member-match.html) operation.  This profile diverges from US Core in that it does not require the inclusion of a patient identifier.

The profile is used in two contexts:
* In the initial request to the operation no identifier will be present.  
* In the response to the operation, the payer's "unique member identifier" for the member will be present.  This is an identifier that spans all coverages the payer manages for the patient and can be used to request information about the member independent of their coverage.  (This is **not** the same as a 'member number' which is typically specific to a particular coverage.)

In most places in Da Vinci, the [US Core Patient profile]({{site.data.fhir.ver.uscore7}}/StructureDefinition-us-core-patient.html) will be used.  (Implementations adhering to the 7.0.0 profile will automatically also be conformant with the 6.1.0 and 3.1.1 versions.)