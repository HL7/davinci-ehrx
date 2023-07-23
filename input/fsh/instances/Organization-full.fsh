Instance: Organization-full
InstanceOf: HRexOrganization
Title: "HRex Organization full example"
Description: "An example showing a fully populated HRex Organization provider instance"
Usage: #example
* id = "full"
* identifier[0]
  * system = "http://example.org/identifiers/somesystem"
  * value = "11223344"
* identifier[+]
  * system = "urn:oid:2.16.840.1.113883.4.7"
  * value = "11223344"
* identifier[+]
  * system = "urn:oid:2.16.840.1.113883.4.4"
  * value = "55566667"
* identifier[+]
  * system = "http://hl7.org/fhir/sid/us-npi"
  * value = "0123456789"
* identifier[+]
  * system = "http://terminology.hl7.org/NamingSystem/CMSCertificationNumber"
  * value = "918273645"
* active = true
* name = "New Health Plan"
* telecom[0]
  * system = #phone
  * value = "1-800-123-4567"
* telecom[+]
  * system = #phone
  * value = "1-234-567-8901"
* telecom[+]
  * system = #email
  * value = "info@newhealthplan.org"
* address[0].line = "#1A 123 Some street, Some town, Canada"
* address[+]
  * line = "1003 Healthcare Drive"
  * city = "Amherst"
  * state = "MA"
  * postalCode = "01002"
  * country = "USA"