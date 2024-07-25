There are a significant number of endpoints that EHRs (and other payers) need to know in order to support the various Da Vinci interoperability specifications.  For example, the location for CDS Hooks services for CRD, the location to call the $questionnaire-package operation for DTR, the location of repositories to query for PDex, etc.

Each of these locations may vary depending on the specific insurance product relevant to the access.  Some endpoints might be managed by the insurer directly, while others may be outsourced.  Different divisions within the same insurer may have responsibility for different products or functions.  Also, who is responsible for a given endpoint may change from time-to-time as functions are outsourced, insourced, or otherwise adjusted.

It is an unrealistic burden on payers and EHRs to try to keep up with all endpoints for all relevant insurers and products.  This section describes an endpoint discovery process that allows payers and providers to determine - for a specific patient’s coverage at a particular time - what the appropriate endpoint to use is.

The first step in the discovery process is to call the X12 270 “Beneficiary Eligibility Check” transaction.  EHRs already have this step as an early part of their regular business process, so it does not impose any additional interoperability or configuration workload.

The 271 response allows the PER segment in several places.  The occurrence in the 2100A Information Source Name Loop is used in this process as we require that endpoints for the same patient for the same payer use the same endpoints irrespective of Coverage.  (Payers may route internally if necessary.)  Specifically, when the payer responds to an Eligibility request indicating that the patient has coverage, the payer SHALL include exactly one 2000A loop repetition such that:
* The NM1-01 is populated with PR, PRP, SEC, or TER (as best suits the role of the coverage in the eligibility check response).  PR would be the default
* There is exactly one PER repetition that has a URL communication number that fits the pattern below.  (i.e. in exactly one of the PER-04, PER-06, or PER-08 where the preceding Communication Number Qualifier is set to ‘UR’):

    * [base]/.well-known/davinci-configuration

The [base] is a server-defined endpoint determined by the payer that is the correct endpoint for the coverage communicated in the EB and REF segments.
* If there are multiple loop repetitions, the davinci-configuration endpoint might be the same or different for different loops.
* If a payer wishes, they may generate time-point-specific configuration endpoints by including a random UUID as part of the base URL.  Such time-limited endpoints must remain available for at least one hour after generation.

NOTE: The 2100A allows multiple members to be conveyed in a single repetition.  However, for this purpose, it is important that each member have a separate 2100A repetition, which means the request must be organized such that each member is in a separate loop.  If a request contains multiple members in a 2100A, the payer SHALL only provide a davinci-configuration .well-known if they have the same endpoint.  If the endpoints differ, then no endpoints can be provided.

Regardless of how it is retrieved, the .well-known endpoint SHALL be accessible with a simple TLS (not mutual TLS) connection and resolve to a JSON document.  The JSON document will include entries for varying configuration settings.  It may include various information, but is expected to expose entries for the Da Vinci and Carin-related endpoint types that are supported for any of the patient’s coverages

The bulk of the possible configuration settings are listed below.  In some cases, Da Vinci IGs may need to adopt additional configuration setting prior to the publication of a new official release of this IG.  Da Vinci IGs may be published that reference additional configuration settings provided that those configuration settings have been approved by a Jira ticket and published in the CI-build of the most recent HRex IG.


| **Property**                       | **Type** | **Description**                                                                                                           |
|------------------------------------|----------|---------------------------------------------------------------------------------------------------------------------------|
| davinci_crd_hook_endpoint          | url      | Endpoint to invoke hook services for any decision support services covered by CRD                                         |
| davinci_dtr_qpackage_endpoint      | url      | The ‘base’ for the endpoint to invoke the $questionnaire-package operation for the coverages relevant for this Patient    |
| davinci_pas_submission_endpoint    | url      | The ‘base’ for the endpoints used to invoke the $submit or $inquire operations for the coverages relevant to this Patient |
| davinci_cdex_attachsubmit_endpoint | url      | The ‘base’ for the endpoint used to invoke the $submit-attachment operation                                               |
| davinci_pdex_patient_endpoint      | url      | The ‘base’ for the endpoints used to query for data for patient access                                                    |
| davinci_pdex_provider_endpoint     | url      | The ‘base’ for the endpoints used to query for data for healthcare provider access                                        |
| davinci_pdex_payer_endpoint        | url      | The ‘base’ for the endpoints used to query for data for healthcare payer access                                           |
| carin_bluebutton_endpoint          | url      | The ‘base’ for the endpoints used to query for Blue Button conformant data.                                               |



In addition, there is a standard extension on Coverage where EHRs can store the .well-known endpoint and expose it to downstream systems (SMART apps, etc.)







