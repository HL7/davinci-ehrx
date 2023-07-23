Instance: Provenance-full
InstanceOf: HRexProvenance
Title: "HRex Provenance full example"
Description: "An example showing a fully populated HRex Provenance instance"
Usage: #example
* id = "full"
* target = Reference(Coverage/full)
//  * reference.value = "Coverage/full"
* occurredDateTime = "2020-07-28"
* recorded = "2020-07-30T20:07:15-06:00"
* agent[0]
  * type = $us-core-provenance-participant-type#transmitter
  * who = Reference(Organization/full)
* agent[+]
  * type = $provenance-participant-type#author
  * who = Reference(Practitioner/full)
* signature[0]
  * type = urn:iso-astm:E1762-95:2013#1.2.840.10065.1.12.1.1
  * when = "2020-07-30T20:07:16.3831-06:00"
  * who = Reference(http://example.org/new-payer/Organization/57)
  * data = "12345678"
* signature[+]
  * type = urn:iso-astm:E1762-95:2013#1.2.840.10065.1.12.1.5
  * when = "2020-07-30T20:07:16.3847-06:00"
  * who = Reference(http://example.org/new-payer/Organization/57)
  * data = "98765432"