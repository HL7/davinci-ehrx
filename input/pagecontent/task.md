Da Vinci makes use of the [Task mechanism](exchanging-request.html#task) to asyncronously solicit information from a target system in few implementation guides.  This
implementation guide defines a specific <a href="StructureDefinition-hrex-task-data-request.html">profile</a> for use in HRex-based IGs that use this information.

The following are examples of Tasks, showing different phases of the workflow for a Task soliciting execution of a specific query.

* [Initial request](Task-query-initial.html) - What the Task looks like on initial post
* [Interim status-check](Task-query-status.html) - What a Task might look like if checked on prior to completion
* [Completed query Task](Task-query-complete.html) - What a Task might look like on completion with a query result
* [Completed document Task](Task-document-complete.html) - What a Task might look like on completion with a document result

### Checking Task Status
Once a Task has been created on the data source, the data consumer needs to monitor for the results.  This can be done on two different mechanisms: Polling and Subscription

#### Polling
In this mode, the data consumer occasionally queries the system maintaining the relevant Task(s) to see if there is anything 'new'.  
To poll, the client will perform a [search]({{site.data.fhir.path}}search.html) for Tasks that are filtered to those owned by the searching organization.
The search would also filter to only include those Tasks that had been created or changed since the server last looked.
E.g.

```[base]/Task?owner=Organization/123&_lastupdated=gt2021-05-03T17:23:18.1732-04:00```

The time-stamp specified would be the search result returned from the last search.  

The frequency of polling needs to be often enough to allow for timely response to changes, while not imposing too high a requirement on system performance.
For Da Vinci, systems that use polling SHALL check for new/updated information at least once per business day and SHOULD check for information at least once per hour during
normal hours of operation.  Systems SHOULD NOT query more often than every 15 minutes unless there is an urgent change they are monitoring for.

The response would look like [this](Bundle-task-poll-response.html).

#### Subscription
In the subscription mechanism, instead of the data source system regularly querying the server to see if there are changes to existing Tasks, the client creates a
Subscription instance on the server that indicates that it wants to be notified about changes to Tasks and, in the Subscription, provides filters that describe what
subset of Tasks it is interested in.  The server will then push notifications when there are new Tasks and the data source can then query for the specific Tasks that have changed.

This Gravity functionality is based on the [R4 Subscription backport](http://hl7.org/fhir/uv/subscriptions-backport) implementation guide.  This implementation guide 
allows pre-adoption of the FHIR R5 topic-based subscription approach in R4 implementations and is the subscription approach that most U.S. EHR vendors have agreed to 
support.  Implementers of this Da Vinci IG who choose to support Subscription must comply with the Subscription Backport IG for the purpose of monitoring Tasks.

For the purposes of this IG, there will be no need for 'topic discovery' as there is only one topic of interest - [monitoring Task](#task-topic).
While this topic is not unique to the Gravity IG, because no standard topics have yet been defined for US Core, this IG will define the needed
topic here.  In the future, these topics may be subsumed into general-purpose topics defined by US Core and/or the FHIR core specification.

Systems supporting subscription SHALL support the rest-hook channel mechanism, though they may choose to support other channel approaches.  Servers SHALL support both
JSON and XML and clients SHALL support at least one of these.  Client and server SHALL support id-only, though they may  also support other content approaches.  The
id-only approach means that the id of the Task that was updated will be provided.  The client will then perform a read or a query to
retrieve the specified record(s) specified in the subscription notification. E.g.

<code>[base]/Task?_id=1234,5678</code>

If search is used, the client MAY use _include=Task:output to retrieve the referenced results as well.  E.g.
<code>[base]/Task?_id=1234m5678&_include=Task:output</code>

##### Task topic
This topic allows for monitoring for newly created tasks as well as updates to assigned or requested tasks.

<table class="grid">
  <thead>
    <tr>
      <th>Property</th>
      <th>Value</th>
      <th>Notes</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>URL</td>
      <td>http://hl7.org/fhir/us/davinci-hrex/SubscriptionTopic/Task</td>
      <td>This is what will appear in <i>backport-topic-canonical</i> extension</td>
    </tr>
    <tr>
      <td>resourceTrigger.resourceType</td>
      <td>Task</td>
      <td/>
    </tr>
    <tr>
      <td>resourceTrigger.methodCriteria</td>
      <td>update</td>
      <td/>
    </tr>
    <tr>
      <td>resourceTrigger.queryCriteria</td>
      <td>update</td>
      <td/>
    </tr>
    <tr>
      <td>resourceTrigger.queryCriteria.previous</td>
      <td>status:not=draft&amp;intent=order</td>
      <td/>
    </tr>
    <tr>
      <td>resourceTrigger.queryCriteria.current</td>
      <td>status:not=draft&amp;intent=order</td>
      <td/>
    </tr>
    <tr>
      <td>resourceTrigger.queryCriteria.resultForDelete</td>
      <td>test-passes</td>
      <td/>
    </tr>
    <tr>
      <td>resourceTrigger.canFilterBy</td>
      <td>_lastUpdated<br/>
        code<br/>
        owner<br/>
        requester<br/>
        status</td>
      <td>owner will almost always be used.  code and status can be used to further filter if desired</td>
    </tr>
  </tbody>
</table>

The subscription notification response would look like [this](Bundle-subscription-notification-with-data.html) for a query, or like [this](Bundle-subscription-notification-with-document.html) for a document request in environments where the data can be directly pushed securely.