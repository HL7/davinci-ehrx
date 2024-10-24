Instance: PractitionerRole-min
InstanceOf: HRexPractitionerRole
Title: "HRex PractitionerRole min example"
Description: "An example showing a minimally populated HRex PractitionerRole instance"
Usage: #example
* id = "min"
* practitioner = Reference(http://example.org/new-payer/fhir/Practitioner/pract1)
* organization = Reference(Organization/min)
* telecom
  * system = #email
  * value = "ronald.bone@newpayer.com"