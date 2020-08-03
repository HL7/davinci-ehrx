Like US-Core, this IG constrains 'standard' HL7 search parameters to explicitly declare conformance expectations.  This IG also defines additional search parameters in cases where the FHIR core specification is missing search parameters needed for Da Vinci use-cases.  All search parameters [defined in us-core]({{site.data.fhir.ver.uscore}}searchparameters.html) are available in this IG (and IGs that inherit from this one), and the conformance expectations carry forward.  Similarly, this IG does not make assertions about what search parameters must be supported, only what behavior must be supported for a given search parameter when/if it *is* supported.  Other Da Vinci IGs may assert support expectations for search parameters defined here and may also refine and/or supplement the conformance expectations listed here.

The following search parameters are defined in this IG:

### Coverage
* [Coverage identifier](SearchParameter-hrex-coverage-identifier.html)
* [Coverage patient](SearchParameter-hrex-coverage-patient.html)
* [Coverage payor](SearchParameter-hrex-coverage-payor.html)
* [Coverage subscriber](SearchParameter-hrex-coverage-subscriber.html)
* [Coverage subscriberId](SearchParameter-hrex-coverage-subscriberId.html) (This one is not in FHIR core, though it has been proposed)

### Provenance
* [Provenance target](SearchParameter-hrex-provenance-target.html)