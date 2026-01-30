This portion of the specification addresses two issues:

1. There are many endpoints that EHRs (and other payers) need to know in order to support the various Da Vinci interoperability specifications.  For example, the location for CDS Hooks services for CRD, the location to call the $questionnaire-package operation for DTR, the location of repositories to query for PDex, etc.

Each of these locations might vary depending on the specific insurance product relevant to the access.  Some endpoints might be managed by the insurer directly, while others could be outsourced.  Different divisions within the same insurer might have responsibility for different products or functions.  Also, who is responsible for a given endpoint could change from time-to-time as functions are outsourced, insourced, or otherwise adjusted.

It is an unrealistic burden on payers and EHRs to try to keep up with all endpoints for all relevant insurers and products.  

2. When transmitting patient coverage, there is a need to identify the payer associated with the coverage.  However, there is no central authority that manages assigning identifiers to payer organizations - or even agreement on what the appropriate scope of such an identier should be.

This section describes process that allows payers and providers to determine - for a specific patient's coverage at a particular time - what the appropriate endpoints and payer identifier to use are.


The first step in the discovery process is to call the X12 270 "Health Care Eligibility Benefit Inquiry" transaction.  EHRs already have this step as an early part of their regular business process, so it does not impose any additional interoperability or configuration workload.

The 271 response allows the PER segment in several places.  The occurrence in the 2000A Information Source Name Loop is used in this process as we require that endpoints for the same patient for the same payer use the same endpoints irrespective of Coverage.  (Payers may route internally if necessary.)  Specifically:

§§ep-1?^disc-server^exchange:When the payer responds to an Eligibility Inquiry indicating that the patient has coverage, the payer **SHALL** include exactly one 2000A loop repetition meeting specified requirements.^

When the payer responds to an Eligibility Inquiry indicating that the patient has coverage, the payer **SHALL** include exactly one 2000A loop repetition such that:
* The NM1-01 is populated with PR.
* There is exactly one PER repetition that has a URL communication number that fits the pattern below.  (i.e. in exactly one of the PER04, PER06, or PER08 where the preceding Communication Qualifier Number is set to 'UR'):

§§

    * [base]`/.well-known/davinci-configuration`

The [base] is a server-defined endpoint determined by the payer.
* If a payer wishes, they may generate time-point-specific configuration endpoints by including a random UUID as part of the base URL.  Such time-limited endpoints must remain available for at least one hour after generation.

§ep-2^disc-server^exchange:Regardless of how it is retrieved, the .well-known endpoint **SHALL** be accessible with a simple TLS (not mutual TLS) connection and resolve to a JSON document.§  The JSON document will include entries for varying configuration settings.  It may include various information, but is expected to expose entries for the Da Vinci and Carin-related endpoint types that are supported for any of the patient's coverages.  The specific content expectations are documented in [this logical model](StructureDefinition-HRexWellknownDefinition.html) and an example of the content of such a file can be seen [here](Binary-Wellknown.html).  The file definition includes an ability to convey a payer's identifier (the one relevant for the patient's coverage(s)), as well as all endpoints the payer has for that patient's coverage(s).

The bulk of the possible endpoints whose locations can be defined are shown in [this value set](ValueSet-hrex-endpoint-name.html).  In some cases, Da Vinci or other HL7 IGs may need to adopt additional configuration setting prior to the publication of a new official release of this IG.  IGs may be published that reference additional configuration settings provided that those new endpoint location codes have been approved by a Jira ticket and published in the CI-build of the most recent HRex IG.  <span class="new-content" markdown="1"><a name="FHIR-53221">§ep-3^disc-client^processing:As well, codes for new 'final publication' versions of specifications that already have defined base codes (following the convention of appending '#' and then the first two nodes of the version number) **SHALL** be treated as valid, even if not yet listed in this specification.§</span>

Because not all systems who might be interested in the .well-known endpoints will typically perform (or be able to perform) eligibility checks, the .well-known file location can be stored in the Coverage resource using the [Wellknown Location extension](StructureDefinition-extension-CoverageDavinciWellknownLocation.html).  From there, it can be exposed to downstream systems (SMART apps, etc.)

Endpoints will generally be stable, but it is at least theoretically possible for an endpoint to change between when a provider performs the initial eligibility check and when they hit that endpoint.  §ep-4?^disc-client^exchange:In situations where an endpoint turns out to not be functional, client systems **MAY** choose to re-query the .well-known endpoint and/or to re-run the eligibility check to see if the end point has changed.§
