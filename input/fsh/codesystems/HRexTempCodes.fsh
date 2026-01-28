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
* #_reqcat      "Requirements Categories"  "Codes that help to categorize requirements statements"
  * ^property.code = #abstract
  * ^property.valueBoolean = true
  * #business   "business"            "Requirements relating to the business operations of the entities responsible for a system"
  * #exchange   "exchange"            "Requirements relating to when or how data is exchanged with other systems"
  * #processing "processing"          "Requirements related to how data is dealt with internally to a system"
  * #storage    "storage"             "Requirements relating to when or how data is or is not persisted within a system"
  * #ui         "ui"                  "Requirements relating to the appearance of information on a user interface"
