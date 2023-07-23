Extension: PreAuthIssueDate
Id: extension-itemPreAuthIssueDate
Title: "Pre Authorized Issue Date"
Description: "The date when this item's preauthorization was issued."
* ^extension[$standard-status].valueCode = #draft
* ^extension[$fmm].valueInteger = 0
* value[x] only date