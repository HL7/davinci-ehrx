CodeSystem: HRexEndpointDiscoveryCodes
Id: hrex-endpoint-discovery
Title: "HRex Endpoint Discovery Code System"
Description: "Codes used to support the endpoint discovery logical model."
* ^status = #active
* ^hierarchyMeaning = #is-a
* ^caseSensitive = true
* ^content = #complete
* ^experimental = false
* #payer-identifier                   "Payer Identifier" "A unique identifier for the payer responsible for the coverage(s) associated with the endpoints listed in this file"
* #davinci_crd_hook_endpoint          "CRD Hook Endpoint" "Endpoint to invoke hook services for any decision support services covered by CRD"
* #davinci_cdex_attachsubmit_endpoint "CDex Submit Attachment Endpoint" "The 'base' for the endpoint used to invoke the $submit-attachment operation for Unsolicited attachments"
* #davinci_dtr_qpackage_endpoint      "DTR Questionnaire Package Endpoint" "The 'base' for the endpoint to invoke the $questionnaire-package operation for the coverages relevant for this Patient"
* #davinci_pas_submission_endpoint    "PAS Submission Endpoint" "The 'base' for the endpoints used to invoke the $submit or $inquire operations for the coverages relevant to this Patient"
* #davinci_pdex_patient_endpoint      "PDex Patient Data Endpoint" "The 'base' for the endpoints used to query for data for patient access"
* #davinci_pdex_provider_endpoint     "PDex Provider Data Endpoint" "The 'base' for the endpoints used to query for data for healthcare provider access"
* #davinci_pdex_payer_endpoint        "PDex Payer Data Endpoint" "The 'base' for the endpoints used to query for data for healthcare payer access"
* #carin_bluebutton_endpoint          "CARIN Bluebutton Endpoint" "The 'base' for the endpoints used to query for Blue Button conformant data."
