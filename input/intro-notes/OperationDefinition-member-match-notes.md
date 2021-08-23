
The response from a failed $member-match is a "422 Unprocessable Entity Status Code".

After a successful $member-match the requesting system **SHALL** then use the UMB provided by the target payer in the `Patient.identifier` field in any subsequent transactions with the same system.  If the requesting system was a payer with coverage for the member, the receiving system SHOULD create a linkage between their own member information and the Coverage provided by the requesting system.  This linkage can be used to support subsequent queries by establishing a known 'reason' for accessing a member's information.

For example, in the Da Vinci PDex IG, the requesting system will subsequently use the UMB identifier to request the member’s health records. This can be done by querying the US Core FHIR profile endpoints which will be constrained to the identified member. Alternatively, the requesting can perform a $everything operation to the Patient/{ID}/$everything operation endpoint to receive a bundle of the member’s health records.

For PCDE, the requesting system will subsequently use the UMB identifier to send a Task message and request the PCDE coverage transition bundle.

Similarly provider systems that initiate a member match can use the UMB in subsequent queries to access payer-held clinical and other information.

#### Interpretation of parameter names
Because the original member match was defined in the Da Vinci PDex implementation guide, which was subsequently referenced by regulation, there are some challenges around making breaking changes to the interface.  For this reason, this HRex operation retains the original parameter names of 'OldCoverage' and 'NewCoverage'.  However, in practice, this operation will be used in situations when those labels don't necessarily make sense.  Therefore, treat these parameters as though they were named as follows:

* OldCoverage = coverageToMatch
* NewCoverage = coverageToLink

Implementers should plan for the possibilities that these paramter names will be changed in the future.

#### Resolving parameter references
The input parameters include a Coverage resource with a reference to a Patient resource.  That reference **SHALL** be a 'local' reference (i.e. starting with "Patient/" rather than "http"), **SHALL** be resolved to the paraemter with the name "MemberPatient" and **SHALL** refer to the same id.

#### Member matching Logic
This specification does not define the member matching logic that is used by a Payer that processes a $member-match operation.

The specification is:

* Only a SINGLE unique match **SHALL** be returned.
* No match **SHALL** return a 422 status code.
* Multiple matches **SHALL** return a 422 status code.

An important objective of this specification is to ensure that a health plan operating a $member-match operation has sufficient data provided to enable a match operation to be performed.  Therefore, the specification requires a health plan to provide demographic information (name, date of birth, gender) and identification details that would be present on a member's health plan insurance card with a request.

If a match is successful, for backward compatibility reasons, the server SHALL echo back the 'NewCoverage'.  The MemberPatient **SHALL** include the UMB for the member and **SHOULD NOT** contain any other changes.
<div class="stu-note">
<ul>
<li>Client systems should not rely on the 'NewCoverage' element being echoed back in the operation response.  It may be dropped in a future release.  Clients should match requests with responses either by maintining a session id between request and response when invoking the operation synchronously or by tracking which request is associated with which polling content location if using [asynchronous]({{site.data.fhir.path}}async.html) invocation.</li>
<li>In a future release of this operation, the MemberPatient might be dropped from the operation output and replaced with a simple parameter that only includes the identifier rather than wrapping it in a resource.</li>
</ul>


</div>

#### Examples
An example request (as POSTed when invoking the operation) can be found [here](Parameters-member-match-in.html) and an example response (as received in the HTTP response body after the operation processes) can be found [here](Parameters-member-match-out.html).

