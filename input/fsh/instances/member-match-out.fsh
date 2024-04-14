Instance: member-match-out
InstanceOf: HRexMemberMatchResponseParameters
Title: "$member-match example response"
Description: "A Parameters instance showing what the result of a $member-match operation would look like when initiated by a payer system"
Usage: #example
* parameter[MemberIdentifier].valueIdentifier
  * system = "http://example.org/target-payer/identifiers/member"
  * value = "55678"
  * assigner.display = "Old Payer"
* parameter[MemberId].valueReference = Reference(http://example.org/new-payer/fhir/Patient/pat1)