This example includes all the mandatory and mustSupport elements from the [HRex PractitionerRole](StructureDefinition-hrex-practitionerrole.html) profile, including multiple repetitions of elements that are permitted to repeat.  This represents the set of elements that conformant systems must be capable of handling.

Notes:

* It would be unusual for *all* the mustSupport identifier types to be present, but it is possible.  And other identifiers might be present as well.
* The code and specialty values do not include 'display' or 'text' elements because those are not mustSupport.  However, populating them is good practice and encouraged.
* Additional elements might be sent to differentiate amongst telecom information, but it is sufficient to simply send the collection of what is known in an undifferentiated fashion

