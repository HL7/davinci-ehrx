To access information about a member on a payer's system, the requesting system needs to know the unique identifier of that member on the payer's system.  However, in many cases, neither the client system nor the patient will have this information.  The $member-match operation supports identifying the target payer's member and coverage information for a specified member so the client can use that information for subsequent queries and operations.

In addition, the $member-match operation allows establishing consent from the patient (or other responsible party) that enables information to flow between the initiating system and the responding system.

<div class="new-content" markdown="1">

This operation might be used by EHRs, other payers, or any other type of system that needs to interact with a payer and who needs to resolve the identity of the member in question on the target payer's system.

</div>

The operation works by passing in up to four parameters:

* The requesting system's demographic information on the member (as a Patient resource)
* If initiated by a payer holding coverage for the member, the requesting payer's Coverage information (to allow linking by the receiving payer)
* The target payer's Coverage information (as gleaned from the member's card)
* The consent of the member (or responsible party) for the member's information held by the target payer to be shared with the requesting system

The response returns:
* The target payer's identifier information on the member - their unique member identifier (UMB) sent as an Identifer within a Parameters instance.
* Optionally, a RESTful reference to the Patient that corresponds to the member on the payer's FHIR API

An identifier is required, while the RESTful id is optional as most payers do not (yet) expose RESTful ids for their member or coverage records.  This identifier can be used in subsequent interactions with the target payer system.