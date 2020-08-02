Like US-Core, this IG constrains 'standard' HL7 search parameters to explicitly declare conformance expectations.  This IG also defines additional search parameters in cases where the FHIR core specification is missing search parameters needed for Da Vinci use-cases.  All in [search parameters defined us-core]({{site.data.fhir.ver.uscore}}searchparameters.html) are available in this IG, and the conformance expectations carry forward.  Similarly, this IG does not make assertions about what search parameters must be supported, only what behavior must be supported for a given search parameter when/if it *is* supported.  Other Da Vinci IGs may assert support expectations for search parameters defined here and may also refine and/or supplement the conformance expectations listed here.

### Coverage
* [patient](SearchParameter-hrex-coverage-identifier.html)
* [patient](SearchParameter-hrex-coverage-patient.html)
* [patient](SearchParameter-hrex-coverage-payor.html)
* [patient](SearchParameter-hrex-coverage-subscriber.html)
* [patient](SearchParameter-hrex-coverage-subscriberId.html)

### Provenance
* [target](SearchParameter-hrex-provenance-target.html)