Instance: subscription-notification-with-document
InstanceOf: Bundle
Title: "HRex Task Subscription Notification - completed document example"
Description: "An example showing the subscription notification for a 'document' data request task that includes data"
Usage: #example
* type = #history
* timestamp = "2020-05-29T11:44:13.1882432-05:00"
* entry[0]
  * fullUrl = "urn:uuid:f830abeb-7ff3-4494-bfd6-0d9a88d3319c"
  * resource = f830abeb-7ff3-4494-bfd6-0d9a88d3319c
  * request
    * method = #GET
    * url = "https://example.org/fhir/r4/Subscription/task/$status"
  * response.status = "200"
* entry[+]
  * fullUrl = "https://example.org/fhir/r4/Task/c94fb961-310c-41f1-a54f-fc5f2dba49ee"
  * resource = c94fb961-310c-41f1-a54f-fc5f2dba49ee
  * request
    * method = #PUT
    * url = "Task"
  * response.status = "200"
* entry[+]
  * fullUrl = "https://example.org/fhir/r4/DocumentReference/287Q73J237"
  * resource = 287Q73J237
  * request
    * method = #GET
    * url = "DocumentReference"
  * response.status = "200"

Instance: f830abeb-7ff3-4494-bfd6-0d9a88d3319c
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

Instance: c94fb961-310c-41f1-a54f-fc5f2dba49ee
InstanceOf: Task
Usage: #inline
* status = #completed
* intent = #order
* code = $hrex-temp#data-request
* for = Reference(http://example.org/ehr/fhir/Patient/pat1)
* authoredOn = "2020-07-30T20:07:15-06:00"
* requester = Reference(http://example.org/new-payer/fhir/Organization/hl7pay)
* owner = Reference(http://example.org/provider/fhir/Organization/hl7prov)
* reasonCode.text = "Support prior authorization decision-making"
* reasonReference = Reference(http://example.org/new-payer/fhir/Claim/123)
* input
  * type = $hrex-temp#data-code
  * valueCodeableConcept = $loinc#34108-1
* output
  * type = $hrex-temp#data-value
  * valueReference = Reference(http://example.org/ehr/fhir/DocumentReference/287Q73J237)

Instance: 287Q73J237
InstanceOf: DocumentReference
Usage: #inline
* status = #current
* type = $loinc#34117-2 "History and physical note"
* category = $loinc#47039-3 "Hospital Admission history and physical note"
* subject = Reference(http://example.org/ehr/fhir/Patient/pat1)
* date = "2013-07-01T23:11:33+10:00"
* author = Reference(http://example.org/ehr/fhir/Practitioner/pract1)
* description = "Physical"
* content
  * attachment
    * contentType = #text/plain
    * language = #en-US
    * url = "http://localhost:9556/svc/fhir/Binary/1e404af3-077f-4bee-b7a6-a9be97e1ce32"
    * title = "Physical"
    * creation = "2005-12-24"
  * format = $formatcode#urn:ihe:pcc:apr:handp:2008