Extension: AuthorizedProvider
Id: extension-itemAuthorizedProvider
Title: "Authorized Provider"
Description: "The specific provider who has been authorized to provide this item."
* ^extension[$standard-status].valueCode = #draft
* ^extension[$fmm].valueInteger = 0
* ^status = #draft
* ^context[0].type = #element
* ^context[=].expression = "ClaimResponse.addItem"
* value[x] only Reference(USCorePractitionerProfile or USCoreOrganizationProfile)