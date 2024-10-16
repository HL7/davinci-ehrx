Extension: CoverageDavinciWellknownLocation
Id: extension-CoverageDavinciWellknownLocation
Title: "Coverage Da Vinci Wellknown Endpoint"
Description: "The location of the Da Vinci endpoint .well-known file associated with this Coverage instance.  This file will define a variety of endpoints and other information pertinant to data sharing related to the coverage."
* ^context[0].type = #element
* ^context[=].expression = "Coverage"
* value[x] only uri