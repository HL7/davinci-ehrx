Instance: member-match-out
InstanceOf: Parameters
Title: "$member-match example response"
Description: "A Parameters instance showing what the result of a $member-match operation would look like when initiated by a payer system"
Usage: #example
* parameter
  * name = "MemberIdentifier"
  * valueIdentifier
    * type = $v2-0203#MB
    * system = "http://example.org/target-payer/identifiers/member"
    * value = "55678"
    * assigner.display = "Old Payer"