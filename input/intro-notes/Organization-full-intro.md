This example includes all of the mandatory and mustSupport elements from the [HRex Organization](StructureDefinition-hrex-organization.html) profile, including multiple repetitions of elements that are permitted to repeat.  This represents the set of elements that conformant systems must be capable of handling.

Notes:

* It would be unusual for *all* of the mustSupport identifier types to be present, but it is possible.  And other identifiers might be present as well.
* Additional elements might be sent to differentiate amongst addresses and telcom information, but it is sufficient to simply send the collection of what is known in an undifferentiated fashion
* All of the address part types are optional.  It is not good practice for all parts of an address to be sent in 'line', but it is possible that might happen from some legacy systems.  All systems must be *capable* of sharing all of the distinct address parts.
