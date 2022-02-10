HRex recognizes two consent policies:

* <a name="regular"/><code>http://hl7.org/fhir/us/davinci-hrex/StructureDefinition-hrex-consent.html#regular</code> - Access is granted to all patient information that is not considered to be ‘sensitive’ according to U.S. state or federal regulation.
* <a name="sensitive"/><code>http://hl7.org/fhir/us/davinci-hrex/StructureDefinition-hrex-consent.html#sensitive</code> - Access is granted to all patient information, including that considered to be ‘sensitive’ according to U.S. state or federal regulation.

Systems are not required to support both types of consent, but if using consent, are expected to recognize and use at least one of the two.