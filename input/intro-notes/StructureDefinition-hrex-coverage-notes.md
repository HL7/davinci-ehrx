If the member identifier (conveyed in `Coverage.identifier`) is known, it should be sent as this uniquely identifies a covered individual.  If not, then the `Coverage.subscriberId` can be used together with demographic information found by resolving `Coverage.beneficiary` to identify the member.  (There can be multiple members associated with a single subscriber - e.g. family members of an individual who is covered under a work-based policy.)