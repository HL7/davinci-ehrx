ValueSet: HRexTaskStatus
Id: hrex-task-status
Title: "HRex Task Status ValueSet"
Description: "The set of task codes allowed for use in HRex data request tasks"
* ^status = #active
* ^experimental = false
* TaskStatus#requested
* TaskStatus#accepted
* TaskStatus#rejected
* TaskStatus#in-progress
* TaskStatus#failed
* TaskStatus#completed
* TaskStatus#on-hold