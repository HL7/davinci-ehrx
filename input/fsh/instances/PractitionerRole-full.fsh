Instance: PractitionerRole-full
InstanceOf: HRexPractitionerRole
Title: "HRex PractitionerRole full example"
Description: "An example showing a fully populated HRex PractitionerRole instance"
Usage: #example
* id = "full"
* practitioner = Reference(Practitioner/full)
* organization = Reference(Organization/full)
* code[0] = $provider-taxonomy#111N00000X
* code[+] = $provider-taxonomy#122300000X
* specialty[0] = $provider-taxonomy#103TE1100X
* specialty[+] = $provider-taxonomy#103TF0000X
* location[0] = Reference(http://example.org/some-clinic/Location/1874)
* location[+] = Reference(http://example.org/some-clinic/Location/9233)
* telecom[0]
  * system = #phone
  * value = "1-222-333-4444"
* telecom[+]
  * system = #email
  * value = "ronald.bone@newpayer.com"
* telecom[+]
  * system = #pager
  * value = "1(111)-1111111 - after 5pm"
* endpoint[0] = Reference(http://example.org/some-clinic/EndPoint/1)
* endpoint[+] = Reference(http://example.org/some-clinic/EndPoint/2)