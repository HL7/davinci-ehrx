If the member identifier (conveyed in `Coverage.identifier`) is known, it should be sent as this uniquely identifies a covered individual.  If not, then the `Coverage.subscriberId` can be used together with demographic information found by resolving `Coverage.beneficiary` to identify the member.  (There can be multiple members associated with a single subscriber - e.g. family members of an individual who is covered under a work-based policy.)

<div class="added-content" markdown="1">

Additional notes and guidance around how to map real-world insurance card information into the Coverage resource can be found in the [CARIN Digital Insurance Card IG](https://hl7.org/fhir/us/insurance-card/Physical_Insurance_Card_Data_Elements.html).  As a rule, all elements available should be populated, even if not all might be strictly necessary to identify the member because rules can vary from insurer to insurer about which pieces of information are necessary to uniquely identify a member.

</div>