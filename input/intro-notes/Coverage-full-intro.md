This example includes all the mandatory and mustSupport elements from the [HRex Coverage](StructureDefinition-hrex-coverage.html) profile, including multiple repetitions of elements that are permitted to repeat.  This represents the set of elements that conformant systems must be capable of handling.

Notes:

* It would be uncommon to have multiple identifiers for a single coverage, but it is possible.  
* The payer is handled as an external reference.  It could point to a contained resource if the data is maintained as part of the Coverage instance or just have a 'display' element in situations where all that is known is the payer name.
