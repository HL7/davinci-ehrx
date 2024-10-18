Several Da Vinci guides have a requirement to asynchronously request data that could involve a human collecting, organizing, and/or reviewing data, as described in [Requesting exchange using Task](http://build.fhir.org/exchanging-request.html#task).  This profile shows how Da Vinci uses Task to perform that process, including defining 'standard' codes for the Task and its associated inputs and outputs.

The Task supports two approaches to data sharing:

* One involves leveraging the FHIR 'search' mechanism, but with the ability for humans to intervene to either refine the filter or to review/prune the result set.
* The second involves either specifying a code or text that describes the data to be retrieved

The content resulting from the request might be conveyed by reference or contained within the Task - and can be any sort of FHIR resource at all (and, using DocumentReference or Binary, can include non-FHIR content as well).

When a task is complete but yields no information (empty search results), an empty search-set Bundle will be returned. However, if searching is performed by document code, the result will be a 'failed' status with a statusReason.text indicating that no matching documents existed.

Other Da Vinci IGs can further derive from this profile to further refine the request mechanism and/or to constrain the location or permitted content of the returned data.

