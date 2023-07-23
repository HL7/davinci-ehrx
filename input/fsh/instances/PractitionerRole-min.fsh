Instance: PractitionerRole-min
InstanceOf: HRexPractitionerRole
Title: "HRex PractitionerRole min example"
Description: "An example showing a minimally populated HRex PractitionerRole instance"
Usage: #example
* id = "min"
* practitioner = Reference(Practitioner/min)
* organization = Reference(Organization/min)
* telecom
  * system = #email
  * value = "ronald.bone@newpayer.com"