This is the next (optional) stage for a [HRex Task Data Request](StructureDefinition-hrex-task-data-request.html) after the [initial query](Task-query-initial.html) example.  In this case, the `status` is 'in-progress', however it could also have been 'accepted' or 'rejected'.  (In the latter case, the `statusReason` would need to be set.)  Additional information about the degree of progress and/or the timeline for expected progress is conveyed in `businessStatus`.  There could be multiple updates of the Task at this stage as it passes through various sub-statuses on its way to completion.

The next (final) stage after this example is the [complete example](Task-query-complete.html).

