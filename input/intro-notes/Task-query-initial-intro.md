This is the initial stage of a [HRex Task Data Request](StructureDefinition-hrex-task-data-request.html) seeking execution of a query (with possible human review/vetting prior to delivery of the results).  This example includes a `basedOn` element indicating the order authorizing this request.  This example has both a coded and reference reason.  Tasks can have both, either or neither.  The query appears as an input and specifies the resource to be queried as well as the parameters.  The `for`, `requester`, and `owner` should all be references, never 'contained' resources.

The next (optional) stage after this example is the [status example](Task-query-status.html).

