Extension: AuthorizedDate
Id: extension-itemAuthorizedDate
Title: "Authorized Date"
Description: "The date/period by which the item that is pre-authorized must be completed."
* ^extension[$standard-status].valueCode = #draft
* ^extension[$fmm].valueInteger = 0
* ^status = #draft
* ^context[0].type = #element
* ^context[=].expression = "ClaimResponse.addItem"
* value[x] only dateTime or Period