Invariant: tdr-1
Description: "Must have exactly one input that is data-query or data-code"
Severity: #error
Expression: "input.type.where(coding.where(system='http://hl7.org/fhir/us/davinci-hrex/CodeSystem/hrex-temp' and (code='data-code' or code='data-query')).exists()).count()=1"