ValueSet: ConformanceStatementCategories
Id: cs-categories
Title: "HRex Conformance Statement Categories"
Description: "Categories for conformance statements found in the HRex IG"
* ^status = #active
* ^experimental = false
* include codes from system HRexTempCodes where concept descendent-of #_reqcat
