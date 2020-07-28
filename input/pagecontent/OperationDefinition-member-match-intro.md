When a member switches from one Health Plan to another a member has the option to request their data be passed to their new health plan.  To support this, a new Health Plan must be able to use prior coverage information provided by a new member to request information from a past Health Plan.  

The $member-match operation supports this requirement by allowing one Health Plan to request a unique member identifier (UMB) for a plan member from another Health Plan.  After a successful $member-match the new Health Plan can then use the UMB provided by the old Health Plan in subsequent requests.  The operation requires a Health Plan to provide coverage information with a request to a prior Health Plan provider to enable the old Health Plan to uniquely identity the member to the new Health Plan in any future communications.

Reference Implementation Information: [Member-Match Reference Implementation](https://confluence.hl7.org/display/DVP/Member-Match+Reference+Implementation)

Providing a directory of FHIR Endpoints that support the $member-match operation for each health plan is outside the scope of this operation.
