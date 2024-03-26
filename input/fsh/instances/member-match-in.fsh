Instance: member-match-in
InstanceOf: HRexMemberMatchRequestParameters
Title: "$member-match payer example request"
Description: "A Parameters instance showing what the input to the $member-match operation would look like when initiated by a payer system"
Usage: #example
* parameter[memberPatient].resource
  * resourceType = "Patient"
  * id = "1"
/*  * identifier
    * type = $v2-0203#MB
    * system = "http://example.org/old-payer/identifiers/member"
    * value = "55678"
    * assigner.display = "Old Payer"*/
  * name
    * use = #official
    * family = "Person"
    * given[0] = "Patricia"
    * given[+] = "Ann"
  * gender = #female
  * birthDate = "1974-12-25"
* parameter[CoverageToMatch].resource
  * resourceType = "Coverage"
  * id = "9876B1"
  * identifier
    * type = $v2-0203#MB
    * system = "http://example.org/old-payer"
    * value = "DH10001235"
  * status = #draft
  * relationship = $dar#unknown
  * beneficiary.reference = "Patient/1"
  * period
    * start = "2011-05-23"
    * end = "2012-05-23"
  * payor
    * identifier
      * system = "http://hl7.org/fhir/sid/us-npi"
      * value = "9876543210"
    * display = "Old Health Plan"
  * class[0]
    * type = $coverage-class#group
    * value = "CB135"
  * class[+]
    * type = $coverage-class#plan
    * value = "B37FC"
  * class[+]
    * type = $coverage-class#subplan
    * value = "P7"
  * class[+]
    * type = $coverage-class#class
    * value = "SILVER"
* parameter[CoverageToLink].resource
  * resourceType = "Coverage"
  * id = "AA87654"
  * identifier
    * type = $v2-0203#MB
    * system = "http://example.org/new-payer/identifiers/coverage"
    * value = "234567"
  * status = #active
  * relationship = $dar#unknown
  * beneficiary.reference = "https://hl7.org/fhir/us/core/Patient/example"
  * payor
    * identifier
      * system = "http://hl7.org/fhir/sid/us-npi"
      * value = "0123456789"
    * display = "New Health Plan"
* parameter[Consent].resource
  * resourceType = "Consent"
  * status = #active
  * scope = $consentscope#patient-privacy
//  * category = $v3-ActCode#IDSCL
  * patient.reference = "http://hl7.org/fhir/us/core/Patient/example"
  * performer.reference = "http://hl7.org/fhir/us/core/Patient/example"
  * sourceReference.reference = "http://example.org/DocumentReference/someconsent"
  * policy.uri = "http://hl7.org/fhir/us/davinci-hrex/StructureDefinition-hrex-consent.html#regular"
  * provision
    * type = #permit
    * period
      * start = "2022-01-01"
      * end = "2022-01-31"
    * actor[source]
      * role = $provenance-participant-type#performer
      * reference
        * identifier
          * system = "http://hl7.org/fhir/sid/us-npi"
          * value = "9876543210"
        * display = "Old Health Plan"
    * actor[recipient]
      * role = $v3-ParticipationType#IRCP
      * reference
        * identifier
          * system = "http://hl7.org/fhir/sid/us-npi"
          * value = "0123456789"
        * display = "New Health Plan"
    * action = $consentaction#disclose