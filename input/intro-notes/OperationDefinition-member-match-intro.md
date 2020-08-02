To access information about a particular member on a payer's system, it is necessary to know the unique identifier of that member on the payer's system.  However, in many cases, the client system (that of another payer) may not know the original payer's identifier.  This operation supports identifying the target payer's member and coverage information for a particular member such that it can be used on subsequent queries and operations.  It also allows the target payer to 'link' their payer record to the new payer's record.

The operation works by passing in three sets of information:

* The requesting payer's demographic information on the Member (as a Patient resource)
* The requesting payer's Coverage information (as justification/support for the matching request)
* The target payer's Coverage information (as gleaned from the member's card/memory)

The response returns:
* The target payer's demographic information on the member - including their unique member identifier (UMB) sent as one of the Patient.identifier repetitions
* The target payer's Coverage information (as officially known to the payer)

An identifier is used rather than a member id as most payers do not (yet) expose RESTful ids for their member or coverage records.  This identifier can be used in subsequent interactions with the target payer system.