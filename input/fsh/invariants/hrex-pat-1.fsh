Invariant: hrex-pat-1
Description: "Patient.gender or Patient.birthSex SHALL be present"
Severity: #error
Expression: "gender.exists() or birthSex.exists()"
XPath: "f:gender or f:birthSex"