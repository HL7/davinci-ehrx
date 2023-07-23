Invariant: hrex-cov-1
Description: "Coverage.identifier or Coverage.subscriberId SHALL be present"
Severity: #error
Expression: "identifier.exists() or subscriberId.exists()"
XPath: "f:identifier or f:subscriberId"