To access information about a member on a payer's system, the requesting system needs to know the unique identifier of that member on the payer's system.  However, in many cases, neither the client system nor the patient will have this information.  The $member-match operation supports identifying the target payer's member and coverage information for a specified member so the client can use that information for subsequent queries and operations.

The operation works by passing in three sets of information:

* The requesting payer's demographic information on the member (as a Patient resource)
* If initiated by a payer holding coverage for the member, the requesting payer's Coverage information (to allow linking by the receiving payer)
* The target payer's Coverage information (as gleaned from the member's card)

The response returns:
* The target payer's identifier information on the member - their unique member identifier (UMB) sent as one of the `Patient.identifier` repetitions

An identifier is used rather than a member id as most payers do not (yet) expose RESTful ids for their member or coverage records.  This identifier can be used in subsequent interactions with the target payer system.

Servers SHALL monitor for and take measures to prevent brute force attacks where the same or similar set of demographics are repeatedly searched with differing card information in an attempt to achieve a match when the card information is unknown.  For example, monitoring for an unusual number of match failures from a particular client certificate (regardless of IP address).

