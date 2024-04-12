Profile: HRexReferenceRest
Parent: Reference
Id: hrex-reference-rest
Title: "HRex REST Reference Profile"
Description: "This HRex Reference Profile should be used by Da Vinci IGs where there is a need for the reference to be resolvable via REST (and potentially chained through)."
* reference 1..1

Profile: HRexReferenceId
Parent: Reference
Id: hrex-reference-id
Title: "HRex Identifier Reference Profile"
Description: "This HRex Reference Profile should be used by Da Vinci IGs where there is no expectation for a RESTful reference, but there is a need for a business identifier (and possibly a display name)."
* identifier 1..1 
* display 0..1 MS
