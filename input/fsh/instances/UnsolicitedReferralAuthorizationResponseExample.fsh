Instance: UnsolicitedReferralAuthorizationResponseExample
InstanceOf: HRexClaimResponse
Title: "Unsolicited Prior Authorization example"
Description: "Example of an unsolicited prior authorization"
Usage: #example
* identifier
  * system = "http://example.org/PATIENT_EVENT_TRACE_NUMBER"
  * value = "111099"
  * assigner.identifier
    * system = "http://example.org/USER_ASSIGNED"
    * value = "9012345678"
* status = #active
* type = $claim-type#professional
* use = #preauthorization
* patient = Reference(http://example.org/new-payer/fhir/Patient/pat1)
* created = "2005-05-02T11:02:00+05:00"
* insurer = Reference(Organization/full)
* requestor = Reference(http://example.org/someProvider/fhir/Organization/good-health-clinic)
* outcome = #complete
* preAuthRef = "A1B2C3D4"
* addItem
  * extension[AuthorizedDate]
    * valuePeriod
      * start = "2005-05-02"
      * end = "2005-06-02"
  * extension[PreAuthIssueDate].valueDate = "2005-05-02"
  * extension[AuthorizedProvider].valueReference = Reference(Practitioner/full)
  * extension[ItemTraceNumber]
    * valueIdentifier
      * system = "http://example.org/new-payer/fhir/NamingSystem/auth-numbers"
      * value = "A1B2C3D4"
  * itemSequence = 1
  * productOrService = $1365#3 "Consultation"
  * locationCodeableConcept = $Place_of_Service_Code_Set#11
  * adjudication
    * extension
      * extension[0]
        * url = "number"
        * valueString = "AUTH0001"
      * extension[+]
        * url = "http://hl7.org/fhir/us/davinci-hrex/StructureDefinition/extension-reviewActionCode"
        * valueCodeableConcept = $306#A1 "Certified in total"
      * url = "http://hl7.org/fhir/us/davinci-hrex/StructureDefinition/extension-reviewAction"
    * category = $adjudication#submitted