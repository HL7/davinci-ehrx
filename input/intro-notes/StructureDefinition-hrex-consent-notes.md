HRex recognizes two consent policies:

* <a name="regular"/><code>http://hl7.org/fhir/us/davinci-hrex/StructureDefinition-hrex-consent.html#regular</code> - Access is granted to all patient information that is not considered to be ‘sensitive’ according to U.S. state or federal regulation.
* <a name="sensitive"/><code>http://hl7.org/fhir/us/davinci-hrex/StructureDefinition-hrex-consent.html#sensitive</code> - Access is granted to all patient information, including that considered to be ‘sensitive’ according to U.S. state or federal regulation.

Systems are not required to support both types of consent, but if using consent, are expected to recognize and use at least one of the two.

`Consent.patient` and `Consent.performer` are captured separately to track who actually provides the consent.  Typically both will be the same, but in some cases, consent might be issued by a relative, an institution or even a provider.

Both the 'performer' and 'recipient' actors for disclosure repeat.  §mm-1?^mmclient,mmserver^exchange:The performer **SHALL** include the target payer for the [$member-match](OperationDefinition-member-match.html) and the recipient **SHALL** include the initiator of the $member-match.§  However, additional performers and recipients might be listed, including a 'mutual' consent where initiator and target payer are both listed as performers and recipients, thus authorizing each to share information with the other.

#### Examples
An example of the use of this profile can be seen in the $member-match input parameters [here](Parameters-member-match-in.html) and [here](Parameters-member-match-in-provider.html).