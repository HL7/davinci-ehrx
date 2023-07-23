Instance: Provenance-min
InstanceOf: HRexProvenance
Title: "HRex Provenance min example"
Description: "An example showing a minimally populated HRex Provenance instance"
Usage: #example
* id = "min"
* target = Reference(Coverage/full)
* recorded = "2020-07-30T20:07:15-06:00"
* agent
  * type = $provenance-participant-type#author
  * who = Reference(Practitioner/min)