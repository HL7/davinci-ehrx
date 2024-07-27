
The response from a failed $member-match is a "422 Unprocessable Entity Status Code".

After a successful $member-match the requesting system **SHALL** then use the UMB provided by the target payer in the `Patient.identifier` field in any subsequent transactions with the same system.  If the requesting system was a payer with coverage for the member, the receiving system SHOULD create a linkage between their own member information and the Coverage provided by the requesting system.  This linkage can be used to support subsequent queries by establishing a known 'reason' for accessing a member's information.

NOTE: For privacy reasons, the 'CoverageToLink' **SHOULD NOT** include any data elements not marked as mustSupport in the Coverage profile.


#### Resolving parameter references
The input parameters include both Coverage and Consent resources with a reference to a Patient resource.  Those references **SHALL** be 'local' references (i.e. starting with "Patient/" rather than "http"), **SHALL** be resolved to the parameter with the name "MemberPatient", and **SHALL** refer to the same id.

#### Member matching Logic
This specification does not define the member matching logic that is used by a Payer that processes a $member-match operation.  However, because matching member identity is a key step in the release of potentially sensitive patient information, the algorithms used should be robust.  Servers **SHALL** monitor for and take measures to prevent brute force attacks where the same or similar set of demographics are repeatedly searched with differing card information in an attempt to achieve a match when the card information is unknown.

Matching behavior is:

* A maximum of a SINGLE unique match **SHALL** be returned.
* No match **SHALL** return a 422 status code.
* Multiple matches **SHALL** return a 422 status code.

<div class="added-content" markdown="1">

* If consent is provided, inability to comply with consent requirements **SHALL** return a 422 status code

Any 422 response codes **SHOULD** be accompanied by an [OperationOutcome]({{site.data.fhir.path}}operationoutcome.html) that indicates the specific nature of the failure.

</div>
An important objective of this specification is to ensure that a health plan operating a $member-match operation has sufficient data provided to enable a match operation to be performed.  Therefore, the specification requires a health plan to provide demographic information (name, date of birth, gender) and identification details that would be present on a member's health plan insurance card with a request.

#### Consent
While logically a somewhat separate operation, the sharing of consent is piggy-backed into the matching of member information because, at least at present, Da Vinci workflows requring member matching inevitably also require the sharing of consent and performing both in a single step minimizes design complexity.  It is possible that, in the future, these functions may be separated.

The member match operation allows establishing that a consent exists.  It does not, however, provide a mechanism for indicating that a consent has been revoked.  At present, we have not found a use-case that requires sharing of revocation information.  If the consent gets revoked on the data comsumer's side, then that system simply stops requesting information.  If the consent is revoked on the data source's side, then it simply stops sending information in response to a request.  Thus, it is sufficient that revocation occurs only within one system and there is no need to transmit it to the other.

The recipient of a member match **SHOULD** store the parameters of the consent (Validity Period, Scope etc.) to enable the authorization server to evaluate the consent before issuing a token for data access during subsequent requests.  This information might be stored as a Consent instance in a FHIR store, ubut use of a FHIR store is not required.

#### Examples
An example request (as POSTed when invoking the operation) can be found [here](Parameters-member-match-in.html) and an example response (as received in the HTTP response body after the operation processes) can be found [here](Parameters-member-match-out.html).