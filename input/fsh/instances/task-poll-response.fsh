Instance: task-poll-response
InstanceOf: Bundle
Title: "HRex Task polling response"
Description: "An example showing a polling response monitoring a completed 'document' task"
Usage: #example
* type = #searchset
* total = 1
* link
  * relation = "self"
  * url = "http://example.org/ehr/fhir/Task?_id=c94fb961-310c-41f1-a54f-fc5f2dba49ee&_include=Task:output"
* entry[0]
  * fullUrl = "https://example.org/fhir/r4/Task/c94fb961-310c-41f1-a54f-fc5f2dba49ee"
  * resource = c94fb961-310c-41f1-a54f-fc5f2dba49ee
  * search.mode = #match
* entry[+]
  * fullUrl = "https://example.org/fhir/r4/DocumentReference/c94fb961-310c-41f1-a54f-gd5325dgds7"
  * resource = c94fb961-310c-41f1-a54f-gd5325dgds7
  * search.mode = #include

Instance: c94fb961-310c-41f1-a54f-gd5325dgds7
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