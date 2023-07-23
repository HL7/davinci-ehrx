Invariant: tdr-2
Description: "Task statusReason SHALL be populated if status is 'rejected' or 'failed'"
Severity: #error
Expression: "(status = 'rejected' or status = 'failed') implies statusReason.exists()"