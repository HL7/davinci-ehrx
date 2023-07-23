Invariant: tdr-3
Description: "Task output SHALL be populated if status is 'completed'"
Severity: #error
Expression: "(status = 'completed') implies output.exists()"