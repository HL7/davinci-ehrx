CodeSystem: HRexTempCodes
Id: hrex-temp
Title: "HRex Temporary Code System"
Description: "Codes temporarily defined as part of the HRex implementation guide.  These will eventually migrate into an officially maintained terminology (likely HL7's UTG code systems)."
* ^status = #draft
* ^caseSensitive = true
* ^content = #complete
* #data-request "data request task" "A type of Task asking the owner to deliver the data corresponding to the characteristics defined by the Task.inputs to the Task.beneficiary"
* #data-query "data query input" "Indicates the parameters of a FHIR RESTful search to be executed whose results are requested.  The content will be the query URL following the 'base'.  E.g. `Observation?...`"
* #data-code "data code input" "A code for a document or otherwise describing the characteristics of the information requested"
* #data-value "data values output" "The result of a data request"
* #UMB "Member Number" "A payer's unique member identifier"