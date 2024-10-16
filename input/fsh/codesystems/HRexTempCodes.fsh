CodeSystem: HRexTempCodes
Id: hrex-temp
Title: "HRex Temporary Code System"
Description: "Codes temporarily defined as part of the HRex implementation guide.  These will eventually migrate into an officially maintained terminology (likely HL7's UTG code systems)."
* ^status = #active
* ^hierarchyMeaning = #is-a
* ^caseSensitive = true
* ^content = #complete
* ^experimental = false
* ^property[0].code = #abstract
* ^property[0].uri = "http://hl7.org/fhir/concept-properties#notSelectable"
* ^property[0].type = #boolean
* #data-request "data request task" "A type of Task asking the owner to deliver the data corresponding to the characteristics defined by the Task.inputs to the Task.beneficiary"
* #data-query "data query input" "Indicates the parameters of a FHIR RESTful search to be executed whose results are requested.  The content will be the query URL following the 'base'.  E.g. `Observation?...`"
* #data-code "data code input" "A code for a document or otherwise describing the characteristics of the information requested"
* #data-value "data values output" "The result of a data request"
* #UMB "Unique Product-independent Payer Person Identifier" "A unique identifier assigned to an individual that is consistent regardless of the individual irrespective of their role (subscriber, dependent, etc.) or which product(s) they have with that payer."
* #_endpoints "Endpoint codes" "An abstract collector for endpoint codes"
  * ^property[0].code = #abstract
  * ^property[0].valueBoolean = true
  * #payer-identifier                "Payer Identifier" "A unique identifier for the payer responsible for the coverage(s) associated with the endpoints listed in this file"
  * #davinci_crd_hook_endpoint       "CRD Hook Endpoint" "Endpoint to invoke hook services for any decision support services covered by CRD"
  * #davinci_cdex_attachsubmit_endpoint "CDex Submit Attachment Endpoint" "The 'base' for the endpoint used to invoke the $submit-attachment operation for Unsolicited attachments"
  * #davinci_dtr_qpackage_endpoint   "DTR Questionnaire Package Endpoint" "The 'base' for the endpoint to invoke the $questionnaire-package operation for the coverages relevant for this Patient"
  * #davinci_pas_submission_endpoint "PAS Submission Endpoint" "The 'base' for the endpoints used to invoke the $submit or $inquire operations for the coverages relevant to this Patient"
  * #davinci_pdex_patient_endpoint   "PDex Patient Data Endpoint" "The 'base' for the endpoints used to query for data for patient access"
  * #davinci_pdex_provider_endpoint  "PDex Provider Data Endpoint" "The 'base' for the endpoints used to query for data for healthcare provider access"
  * #davinci_pdex_payer_endpoint     "PDex Payer Data Endpoint" "The 'base' for the endpoints used to query for data for healthcare payer access"
  * #carin_bluebutton_endpoint       "CARIN Bluebutton Endpoint" "The 'base' for the endpoints used to query for Blue Button conformant data."
