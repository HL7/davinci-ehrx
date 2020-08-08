
The response from a failed $member-match is a "422 Unprocessable Entity Status Code".

After a successful $member-match the new health plan **SHALL** then use the UMB provided by the old health plan in the `Patient.identifier` field in any subsequent transactions related to payer-to-payer exchange.

For example, in the Da Vinci PDex IG, the new health plan will subsequently use the UMB identifier to request the member’s health records. This can be done by querying the US Core FHIR profile endpoints which will be constrained to the identified member. Alternatively, the new health plan can perform a $everything operation to the Patient/{ID}/$everything operation endpoint to receive a bundle of the member’s health records.

For PCDE, the new health plan will subsequently use the UMB identifier to send a Task message and request the PCDE coverage transition bundle.

#### Member matching Logic
This specification does not define the member matching logic that is used by a Payer that processes a $member-match operation.

The specification is:
* Only a SINGLE unique match **SHALL** be returned.
* No match **SHALL** return a 422 status code.
* Multiple matches **SHALL** return a 422 status code.

An important objective of this specification is to ensure that a health plan operating a $member-match operation has sufficient data provided to enable a match operation to be performed.  Therefore, the specification requires a health plan to provide demographic information (name, date of birth, gender) and identification details that would be present on a member's health plan insurance card with a request.

#### Examples
An example request (as POSTed when invoking the operation) can be found [here](Parameters-member-match-in.html) and an example response (as received in the HTTP response body after the operation processes) can be found [here](Parameters-member-match-out.html).

