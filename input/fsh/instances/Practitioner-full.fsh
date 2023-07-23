Instance: Practitioner-full
InstanceOf: HRexPractitioner
Title: "HRex Practitioner full example"
Description: "An example showing a fully populated HRex Practitioner instance"
Usage: #example
* id = "full"
* identifier[0]
  * system = "http://example.org/some-code-system"
  * value = "9941339108"
* identifier[+]
  * system = "http://hl7.org/fhir/sid/us-npi"
  * value = "9941339108"
* identifier[+]
  * system = "http://terminology.hl7.org/NamingSystem/CMSCertificationNumber"
  * value = "25456"
* name.family = "Bone"
* qualification[0].code.text = "Cardiologist"
* qualification[+].code.text = "Surgeon"