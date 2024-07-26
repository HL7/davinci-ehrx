
### STU 1.1 - ballot

General

* [FHIR-46472](https://jira.hl7.org/browse/FHIR-46472) - Updated profiles to comply with both US Core 3.1.1 (USCDI v1) and US Core 6.1.0 (USCDI v2)
* [FHIR-46473](https://jira.hl7.org/browse/FHIR-46473) - Migrated the 'exchanging FHIR' content to the FHIR core specification
* [FHIR-44696](https://jira.hl7.org/browse/FHIR-44696) - Defined a mechanism to support discovery of payer Da Vinci endpoints
* [FHIR-46208](https://jira.hl7.org/browse/FHIR-46208) - Added guidance on how implementers should handle validation in multi-version and multi-profile environments
* [FHIR-37533](https://jira.hl7.org/browse/FHIR-37533) - Defined profiles for use on Reference to allow setting expectations for use of RESTful vs. logical references
* [FHIR-34523](https://jira.hl7.org/browse/FHIR-34523) - Drop expectations for support of UDAP at the HRex level
* [FHIR-34039](https://jira.hl7.org/browse/FHIR-34039) - Added additional guidance around mutual TLS

Member match

* [FHIR-44933](https://jira.hl7.org/browse/FHIR-44933) - Corrections where the specification wasn't clear that the patient identifier needs to have a type of UMB and clarified the definition
* [FHIR-42710](https://jira.hl7.org/browse/FHIR-42710) - Made consent optional in $member-match
* [FHIR-42810](https://jira.hl7.org/browse/FHIR-42810) - Extended the member-match operation to support returning an optional FHIR reference to the payer's Patient instance
* [FHIR-38701](https://jira.hl7.org/browse/FHIR-38701) - Ensured member match refers to HRex patient demographics, not US-Core patient
* [FHIR-38691](https://jira.hl7.org/browse/FHIR-38691) - Added guidance on how to manage a match when consent expectations can't be met

Consent

* [FHIR-42737](https://jira.hl7.org/browse/FHIR-42737) - Tightened policy element to be 1..1 instead of 1..*
* [FHIR-36013](https://jira.hl7.org/browse/FHIR-36013) - Added expectation to capture who gave consent, not just what patient it was for
* [FHIR-35912](https://jira.hl7.org/browse/FHIR-35912) - Ensure consent captures who is authorized to disclose

Coverage

* [FHIR-40782](https://jira.hl7.org/browse/FHIR-40782) - Relaxed coverage constraints to align with US Core

Other resources

* [FHIR-37809](https://jira.hl7.org/browse/FHIR-37809) - Dropped ccn identifier expectation from Practitioner and dropped it as mustSupport for Organization


### STU 1.0
Initial 'official' release
