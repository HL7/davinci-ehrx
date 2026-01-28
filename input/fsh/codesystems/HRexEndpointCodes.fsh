CodeSystem: HRexEndpointDiscoveryCodes
Id: hrex-endpoint-discovery
Title: "HRex Endpoint Discovery Code System"
Description: "Codes used to support the endpoint discovery logical model."
* ^status = #active
* ^hierarchyMeaning = #is-a
* ^caseSensitive = true
* ^content = #complete
* ^experimental = false
* ^property[0].code = #status
* ^property[0].uri = "http://hl7.org/fhir/concept-properties#status"
* ^property[0].type = #code
* #payer-identifier                         "Payer Identifier" "A unique identifier for the payer responsible for the coverage(s) associated with the endpoints listed in this file"
* #davinci_crd_hook_endpoint                "CRD Hook Endpoint" "Endpoint to invoke hook services for any decision support services covered by CRD"
  * ^property.code = #status
  * ^property.valueCode = #deprecated
  * #davinci_crd_hook_endpoint#2.0          "CRD Hook Endpoint v2.0" "Endpoint to invoke hook services for any decision support services covered by CRD version 2.0"
  * #davinci_crd_hook_endpoint#2.1          "CRD Hook Endpoint v2.1" "Endpoint to invoke hook services for any decision support services covered by CRD version 2.1"
  * #davinci_crd_hook_endpoint#2.2          "CRD Hook Endpoint v2.2" "Endpoint to invoke hook services for any decision support services covered by CRD version 2.2"
* #davinci_cdex_attachsubmit_endpoint       "CDex Submit Attachment Endpoint" "The 'base' for the CDex endpoint used to invoke the $submit-attachment operation for Unsolicited attachments"
  * ^property.code = #status
  * ^property.valueCode = #deprecated
  * #davinci_cdex_attachsubmit_endpoint#1.0 "CDex Submit Attachment Endpoint v1.0" "The 'base' for the CDex version 1.0 endpoint used to invoke the $submit-attachment operation for Unsolicited attachments"
  * #davinci_cdex_attachsubmit_endpoint#1.1 "CDex Submit Attachment Endpoint v1.1" "The 'base' for the CDex version 1.1 endpoint used to invoke the $submit-attachment operation for Unsolicited attachments"
  * #davinci_cdex_attachsubmit_endpoint#2.0 "CDex Submit Attachment Endpoint v2.0" "The 'base' for the CDex version 2.0 endpoint used to invoke the $submit-attachment operation for Unsolicited attachments"
  * #davinci_cdex_attachsubmit_endpoint#2.1 "CDex Submit Attachment Endpoint v2.1" "The 'base' for the CDex version 2.1 endpoint used to invoke the $submit-attachment operation for Unsolicited attachments"
* #davinci_dtr_qpackage_endpoint            "DTR Questionnaire Package Endpoint" "The 'base' for the endpoint to invoke the DTR $questionnaire-package operation for the coverages relevant for this Patient"
  * ^property.code = #status
  * ^property.valueCode = #deprecated
  * #davinci_dtr_qpackage_endpoint#2.0      "DTR Questionnaire Package Endpoint v2.0" "The 'base' for the endpoint to invoke the DTR version 2.0 $questionnaire-package operation for the coverages relevant for this Patient"
  * #davinci_dtr_qpackage_endpoint#2.1      "DTR Questionnaire Package Endpoint v2.1" "The 'base' for the endpoint to invoke the DTR version 2.1 $questionnaire-package operation for the coverages relevant for this Patient"
  * #davinci_dtr_qpackage_endpoint#2.2      "DTR Questionnaire Package Endpoint v2.2" "The 'base' for the endpoint to invoke the DTR version 2.2 $questionnaire-package operation for the coverages relevant for this Patient"
* #davinci_pas_submission_endpoint          "PAS Submission Endpoint" "The 'base' for the endpoints used to invoke the PAS $submit or $inquire operations for the coverages relevant to this Patient"
  * ^property.code = #status
  * ^property.valueCode = #deprecated
  * #davinci_pas_submission_endpoint#2.0    "PAS Submission Endpoint v2.0" "The 'base' for the endpoints used to invoke the PAS version 2.0 $submit or $inquire operations for the coverages relevant to this Patient"
  * #davinci_pas_submission_endpoint#2.1    "PAS Submission Endpoint v2.1" "The 'base' for the endpoints used to invoke the PAS version 2.1 $submit or $inquire operations for the coverages relevant to this Patient"
  * #davinci_pas_submission_endpoint#2.2    "PAS Submission Endpoint v2.2" "The 'base' for the endpoints used to invoke the PAS version 2.2 $submit or $inquire operations for the coverages relevant to this Patient"
* #davinci_pdex_patient_endpoint            "PDex Patient Data Endpoint" "The 'base' for the PDex endpoints used to query for data for patient access"
  * ^property.code = #status
  * ^property.valueCode = #deprecated
  * #davinci_pdex_patient_endpoint#2.0      "PDex Patient Data Endpoint v2.0" "The 'base' for the PDex version 2.0 endpoints used to query for data for patient access"
  * #davinci_pdex_patient_endpoint#2.1      "PDex Patient Data Endpoint v2.1" "The 'base' for the PDex version 2.1 endpoints used to query for data for patient access"
* #davinci_pdex_provider_endpoint           "PDex Provider Data Endpoint" "The 'base' for the PDex endpoints used to query for data for healthcare provider access"
  * ^property.code = #status
  * ^property.valueCode = #deprecated
  * #davinci_pdex_provider_endpoint#2.0     "PDex Provider Data Endpoint v2.0" "The 'base' for the PDex version 2.0 endpoints used to query for data for healthcare provider access"
  * #davinci_pdex_provider_endpoint#2.1     "PDex Provider Data Endpoint v2.1" "The 'base' for the PDex version 2.1 endpoints used to query for data for healthcare provider access"
* #davinci_pdex_payer_endpoint              "PDex Payer Data Endpoint" "The 'base' for the PDex endpoints used to query for data for healthcare payer access"
  * ^property.code = #status
  * ^property.valueCode = #deprecated
  * #davinci_pdex_payer_endpoint#2.0        "PDex Payer Data Endpoint v2.0" "The 'base' for the PDex version 2.0 endpoints used to query for data for healthcare payer access"
  * #davinci_pdex_payer_endpoint#2.1        "PDex Payer Data Endpoint v2.1" "The 'base' for the PDex version 2.1 endpoints used to query for data for healthcare payer access"
* #carin_bluebutton_endpoint                "CARIN Bluebutton Endpoint" "The 'base' for the endpoints used to query for Blue Button conformant data."
  * ^property.code = #status
  * ^property.valueCode = #deprecated
  * #carin_bluebutton_endpoint#1.0          "CARIN Bluebutton Endpoint v1.0" "The 'base' for the endpoints used to query for Blue Button version 1.0 conformant data."
  * #carin_bluebutton_endpoint#1.1          "CARIN Bluebutton Endpoint v1.1" "The 'base' for the endpoints used to query for Blue Button version 1.1 conformant data."
  * #carin_bluebutton_endpoint#2.0          "CARIN Bluebutton Endpoint v2.0" "The 'base' for the endpoints used to query for Blue Button version 2.0 conformant data."
  * #carin_bluebutton_endpoint#2.1          "CARIN Bluebutton Endpoint v2.1" "The 'base' for the endpoints used to query for Blue Button version 2.1 conformant data."
