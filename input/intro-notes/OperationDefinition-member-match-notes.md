
The response from a failed $member-match is a "422 Unprocessable Entity Status Code".

After a successful $member-match the new Health Plan **SHALL** then use the UMB provided by the Old Health Plan in the Patient.identifer field in any subsequent transactions related to payer-to-payer exchange.

For example, in PDex the new health plan will subsequently use the UMB identifier to request the member’s health records. This can be done by querying the US Core FHIR profile endpoints which will be constrained to the identified member. Alternatively the new health plan can perform a $everything operation to the Patient/{ID}/$everything operation endpoint to receive a bundle of the member’s health records.

For PCDE, the new health plan will subsequently use the UMB identifier to send a Task message and request the PCDE coverage transition bundle.

#### Member matching Logic
This specification does not define the member matching logic that is used by a Payer that processes a $member-match operation.

The specification is:
* Only a SINGLE unique match **SHALL** be returned.
* No match **SHALL** return a 422 status code.
* Multiple matches **SHALL** return a 422 status code.

An important objective of this specification is to ensure that a Health Plan operating a $member-match operation has sufficient data provided to enable a match operation to be performed.  Therefore the specification requires a Health Plan to provide demographic information (name, date of birth, gender) and identification details that would be present on a member's Health Plan insurance card with a request.

#### $member-match Parameter Example
Example request: $member-match Parameter resource submitted by the new health plan. Note the Patient identifier type set to "MB".
$member-match accepts a POST with the Parameters json bundle in the body.

