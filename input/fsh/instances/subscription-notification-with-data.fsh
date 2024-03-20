Instance: subscription-notification-with-data
InstanceOf: Bundle
Title: "HRex Task Subscription Notification - completed query example"
Description: "An example showing the subscription notification for a 'query' data request task that includes data"
Usage: #example
* type = #history
* timestamp = "2020-05-29T11:44:13.1882432-05:00"
* entry[0]
  * fullUrl = "urn:uuid:93be0c3d-1ba9-49bf-8a9b-9614604cda3c"
  * resource = 93be0c3d-1ba9-49bf-8a9b-9614604cda3c
  * request
    * method = #GET
    * url = "https://example.org/fhir/r4/Subscription/task/$status"
  * response.status = "200"
* entry[+]
  * fullUrl = "https://example.org/fhir/r4/Task/e3b9e31e-6252-40a5-9b7b-dfa6ca44f875"
  * resource = e3b9e31e-6252-40a5-9b7b-dfa6ca44f875
  * request
    * method = #PUT
    * url = "Task"
  * response.status = "200"

Instance: e3b9e31e-6252-40a5-9b7b-dfa6ca44f875
InstanceOf: Task
Usage: #inline
* contained[0] = results
* basedOn = Reference(http://example.org/new-payer/CommunicationRequest/57)
* status = #completed
* intent = #order
* code = $hrex-temp#data-request
* for = Reference(http://example.org/new-payer/fhir/Patient/pat1)
* authoredOn = "2020-07-30T20:07:15-06:00"
* requester = Reference(http://example.org/new-payer/fhir/Organization/hl7pay)
* owner = Reference(http://example.org/provider/fhir/Organization/hl7prov)
* reasonCode.text = "Support prior authorization decision-making"
* reasonReference = Reference(http://example.org/new-payer/fhir/Claim/123)
* input
  * type = $hrex-temp#data-query
  * valueString = "Condition?patient=Patient/pat1&clinical-status=active&code:below=http%3A%2F%2Fsnomed.info%2Fsct%7C73211009"
* output
  * type = $hrex-temp#data-value
  * valueReference = Reference(results)

Instance: 93be0c3d-1ba9-49bf-8a9b-9614604cda3c
InstanceOf: Parameters
Usage: #inline
* parameter[0]
  * name = "subscription-url"
  * valueUri = "https://example.org/fhir/r4/Subscription/task"
* parameter[+]
  * name = "status"
  * valueCode = #active
* parameter[+]
  * name = "type"
  * valueCode = #event-notification
* parameter[+]
  * name = "subscription-event-count"
  * valueUnsignedInt = 2
* parameter[+]
  * name = "bundle-event-count"
  * valueUnsignedInt = 1
* parameter[+]
  * name = "subscription-topic-url"
  * valueUri = "http://hl7.org/SubscriptionTopic/task"

Instance: results
InstanceOf: Bundle
Usage: #inline
* type = #searchset
* total = 1
* link
  * relation = "self"
  * url = "http://example.org/new-payer/fhir/Condition?patient=Patient/pat1&clinical-status=active&code:below=http%3A%2F%2Fsnomed.info%2Fsct%7C73211009"
* entry
  * fullUrl = "http://local.fhir.org:960/r4/Condition/example"
  * resource
    * resourceType = "Condition"
    * id = "example"
    * meta
      * versionId = "1"
      * lastUpdated = "2018-11-12T03:34:46.552Z"
    * text
      * status = #generated
      * div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Severe burn of left ear (Date: 24-May 2012)</div>"
    * clinicalStatus = $condition-clinical#active
    * verificationStatus = $condition-ver-status#confirmed
    * category
      * coding[0] = $condition-category#encounter-diagnosis "Encounter Diagnosis"
      * coding[+] = $sct#359642000 "Type 2 diabetes mellitus in nonobese"
    * subject.reference = "http://example.org/new-payer/fhir/Patient/pat1"
    * onsetDateTime = "2012-05-24"
  * search.mode = #match
