Extension: AuthorizedProvider
Id: extension-itemAuthorizedProvider
Title: "Authorized Provider"
Description: "The specific provider who has been authorized to provide this item."
* ^extension[$standard-status].valueCode = #draft
* ^extension[$fmm].valueInteger = 0
* value[x] only Reference(USCorePractitionerProfile or USCoreOrganizationProfile)