Instance: hrex-provenance-target
InstanceOf: SearchParameter
Title: "Provenance target Search Parameter"
Usage: #definition
* url = "http://hl7.org/fhir/us/davinci-hrex/SearchParameter/hrex-provenance-target"
* name = "HRexProvenanceTarget"
* derivedFrom = "http://hl7.org/fhir/SearchParameter/Provenance-target"
* status = #active
* experimental = false
* description = "Target Reference(s) (usually version specific)\n\n**NOTE**: This HRex SearchParameter definition extends the usage context of the [capabilitystatement-expectation](http://hl7.org/fhir/R4/extension-capabilitystatement-expectation.html) extension to formally express implementer expectations for these elements:\n\n* multipleAnd\n\n* multipleOr\n\n* modifier\n\n* comparator\n\n* chain"
* jurisdiction = urn:iso:std:iso:3166#US
* code = #target
* base = #Provenance
* type = #reference
* expression = "Provenance.target"
* xpath = "f:Provenance/f:target"
* xpathUsage = #normal
* target[0] = #Account
* target[+] = #ActivityDefinition
* target[+] = #AdverseEvent
* target[+] = #AllergyIntolerance
* target[+] = #Appointment
* target[+] = #AppointmentResponse
* target[+] = #AuditEvent
* target[+] = #Basic
* target[+] = #Binary
* target[+] = #BiologicallyDerivedProduct
* target[+] = #BodyStructure
* target[+] = #Bundle
* target[+] = #CapabilityStatement
* target[+] = #CarePlan
* target[+] = #CareTeam
* target[+] = #CatalogEntry
* target[+] = #ChargeItem
* target[+] = #ChargeItemDefinition
* target[+] = #Claim
* target[+] = #ClaimResponse
* target[+] = #ClinicalImpression
* target[+] = #CodeSystem
* target[+] = #Communication
* target[+] = #CommunicationRequest
* target[+] = #CompartmentDefinition
* target[+] = #Composition
* target[+] = #ConceptMap
* target[+] = #Condition
* target[+] = #Consent
* target[+] = #Contract
* target[+] = #Coverage
* target[+] = #CoverageEligibilityRequest
* target[+] = #CoverageEligibilityResponse
* target[+] = #DetectedIssue
* target[+] = #Device
* target[+] = #DeviceDefinition
* target[+] = #DeviceMetric
* target[+] = #DeviceRequest
* target[+] = #DeviceUseStatement
* target[+] = #DiagnosticReport
* target[+] = #DocumentManifest
* target[+] = #DocumentReference
* target[+] = #EffectEvidenceSynthesis
* target[+] = #Encounter
* target[+] = #Endpoint
* target[+] = #EnrollmentRequest
* target[+] = #EnrollmentResponse
* target[+] = #EpisodeOfCare
* target[+] = #EventDefinition
* target[+] = #Evidence
* target[+] = #EvidenceVariable
* target[+] = #ExampleScenario
* target[+] = #ExplanationOfBenefit
* target[+] = #FamilyMemberHistory
* target[+] = #Flag
* target[+] = #Goal
* target[+] = #GraphDefinition
* target[+] = #Group
* target[+] = #GuidanceResponse
* target[+] = #HealthcareService
* target[+] = #ImagingStudy
* target[+] = #Immunization
* target[+] = #ImmunizationEvaluation
* target[+] = #ImmunizationRecommendation
* target[+] = #ImplementationGuide
* target[+] = #InsurancePlan
* target[+] = #Invoice
* target[+] = #Library
* target[+] = #Linkage
* target[+] = #List
* target[+] = #Location
* target[+] = #Measure
* target[+] = #MeasureReport
* target[+] = #Media
* target[+] = #Medication
* target[+] = #MedicationAdministration
* target[+] = #MedicationDispense
* target[+] = #MedicationKnowledge
* target[+] = #MedicationRequest
* target[+] = #MedicationStatement
* target[+] = #MedicinalProduct
* target[+] = #MedicinalProductAuthorization
* target[+] = #MedicinalProductContraindication
* target[+] = #MedicinalProductIndication
* target[+] = #MedicinalProductIngredient
* target[+] = #MedicinalProductInteraction
* target[+] = #MedicinalProductManufactured
* target[+] = #MedicinalProductPackaged
* target[+] = #MedicinalProductPharmaceutical
* target[+] = #MedicinalProductUndesirableEffect
* target[+] = #MessageDefinition
* target[+] = #MessageHeader
* target[+] = #MolecularSequence
* target[+] = #NamingSystem
* target[+] = #NutritionOrder
* target[+] = #Observation
* target[+] = #ObservationDefinition
* target[+] = #OperationDefinition
* target[+] = #OperationOutcome
* target[+] = #Organization
* target[+] = #OrganizationAffiliation
* target[+] = #Patient
* target[+] = #PaymentNotice
* target[+] = #PaymentReconciliation
* target[+] = #Person
* target[+] = #PlanDefinition
* target[+] = #Practitioner
* target[+] = #PractitionerRole
* target[+] = #Procedure
* target[+] = #Provenance
* target[+] = #Questionnaire
* target[+] = #QuestionnaireResponse
* target[+] = #RelatedPerson
* target[+] = #RequestGroup
* target[+] = #ResearchDefinition
* target[+] = #ResearchElementDefinition
* target[+] = #ResearchStudy
* target[+] = #ResearchSubject
* target[+] = #RiskAssessment
* target[+] = #RiskEvidenceSynthesis
* target[+] = #Schedule
* target[+] = #SearchParameter
* target[+] = #ServiceRequest
* target[+] = #Slot
* target[+] = #Specimen
* target[+] = #SpecimenDefinition
* target[+] = #StructureDefinition
* target[+] = #StructureMap
* target[+] = #Subscription
* target[+] = #Substance
* target[+] = #SubstanceNucleicAcid
* target[+] = #SubstancePolymer
* target[+] = #SubstanceProtein
* target[+] = #SubstanceReferenceInformation
* target[+] = #SubstanceSourceMaterial
* target[+] = #SubstanceSpecification
* target[+] = #SupplyDelivery
* target[+] = #SupplyRequest
* target[+] = #Task
* target[+] = #TerminologyCapabilities
* target[+] = #TestReport
* target[+] = #TestScript
* target[+] = #ValueSet
* target[+] = #VerificationResult
* target[+] = #VisionPrescription
* multipleOr = true
  * extension[$cs-expectation].valueCode = #MAY
* multipleAnd = true
  * extension[$cs-expectation].valueCode = #MAY
* modifier[0] = #missing
  * extension[$cs-expectation].valueCode = #MAY
* modifier[+] = #text
  * extension[$cs-expectation].valueCode = #MAY
* modifier[+] = #not
  * extension[$cs-expectation].valueCode = #MAY
* modifier[+] = #type
  * extension[$cs-expectation].valueCode = #MAY
* modifier[+] = #identifier
  * extension[$cs-expectation].valueCode = #SHOULD