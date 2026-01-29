The following guidance applies to the use of Providence across Da Vinci IGs.  IGs can impose additional expectations with respect to the use of Provenance either across their whole use-case or in the context of specific events.

### Searching

There is no expectation for support for querying Provenance except using `_revinclude` using the 'target' parameter (to return Provenance instances associated with a returned resource).

### Aligning Provenance and Resource elements

Provenance should align with information present in the record.  Where a Provenance deals with the creation of an instance, the author, performer and (if present) informer should align with the equivalent elements on the record.  Similarly, `Provenance.occurred` should align with the creation date for the record.

### Populating `Provenance.agent`

§§prov-1?^implementer^exchange:Implementations **SHOULD** follow the recommendations on which resources should be referenced from which data element.^

The following table lists the various agent codes and what resource types are appropriate.  These recommendations **SHOULD** be followed

| element     | Allowed target resources |
------------------------
| transmitter | This could be Patient, RelatedPerson, Practitioner or PractitionerRole or Organization.  A second transmitter could capture the specific Device used |
| enterer     | Patient, RelatedPerson, Practitioner or PractitionerRole |
| performer   | could be anything |
| author      | could be anything |
| verifier    | generally only Practitioner or PractitionerRole |
| legal       | Only Practitioner or PractitionerRole |
| attester    | Patient, RelatedPerson, Practitioner or PractitionerRole |
| informant   | Patient, RelatedPerson, Practitioner or PractitionerRole |
| custodian   | usually Organization, could also be Device, Practitioner or PractitionerRole |
| assembler   | usually a Device, could be Practitioner or PractitionerRole |
------------------------------------------

§§

### Handling agents with multiple roles

In general, the most important role to capture is "author".  If they are the only role present, the presumption is that they are also the enterer, performer, verifier, legal, attester, informant, etc.  Specifying other roles is only necessary if they *differ* from the author.  Not all systems will necessarily track all participants.  Roles other than author only need to be shared if the system captures them and feels they might be relevant to downstream use of the information.

### Populating `onBehalfOf`

§§prov-2?^implementer^exchange:`Provenance.agent.onBehalfOf` **SHOULD NOT** be used in certain circumstances.^

`Provenance.agent.onBehalfOf` is only relevant in certain circumstances:

* `onBehalfOf` **SHOULD NOT** be populated if RelatedPerson is acting on behalf of the Patient.  (Because that is the assumption and there is already a link to the Patient on that resource)
* `onBehalfOf` **SHOULD NOT** be populated with an Organization if the agent is Practitioner - use PractitionerRole instead (even if it is a contained PractitionerRole)
* `onBehalfOf` **SHOULD NOT** be populated with an Organization if the agent is PractitionerRole unless PractitionerRole is pointing to an organization and the `onBehalfOf` is different (i.e. Dr. Smith for Clinic A did something on behalf of clinic B)
* It is unusual for `onBehalfOf` to be populated if the agent is Patient or RelatedPerson
* `onBehalfOf` **SHOULD NOT** be populated with an Organization if it is the same as `Device.owner`

§§