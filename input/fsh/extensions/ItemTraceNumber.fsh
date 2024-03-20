Extension: ItemTraceNumber
Id: extension-itemTraceNumber
Title: "Item Trace Number"
Description: "Uniquely identifies this claim item. (2000F-TRN)"
* ^extension[$standard-status].valueCode = #draft
* ^extension[$fmm].valueInteger = 0
* ^status = #draft
* ^context[0].type = #element
* ^context[=].expression = "ClaimResponse.addItem"
* value[x] only Identifier