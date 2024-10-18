<div class="new-content" markdown="1">

### STU 1.1

* [FHIR-48672](https://jira.hl7.org/browse/FHIR-48672) - Added support for US Core 7.0 as well as 6.1
* [FHIR-48414](https://jira.hl7.org/browse/FHIR-48414) - Clarified that EHRs weren't required to move forward US Core 6.1/7.0 adoption to comply with the guide
* [FHIR-48440](https://jira.hl7.org/browse/FHIR-48440) - Added extension to allow conveying davinci wellknown file in Coverage, and added support for payer identifier in file
* [FHIR-46678](https://jira.hl7.org/browse/FHIR-46678) - Added a CDex endpoint to the endpoint discovery list
* [FHIR-47996](https://jira.hl7.org/browse/FHIR-47996) - Removed the details of the SMART app dynamic registration section and pointed to the FAST security guide instead

A variety of technical correction and non-substantive improvements to wording and artifacts.


### STU 1.1 - ballot

The following is a list of the substantive changes since the last official release

General:

* [FHIR-46472](https://jira.hl7.org/browse/FHIR-46472) - Updated profiles to comply with both US Core 3.1.1 (USCDI v1) and US Core 6.1.0 (USCDI v2)
* [FHIR-46473](https://jira.hl7.org/browse/FHIR-46473) - Migrated the 'exchanging FHIR' content to the FHIR core specification
* [FHIR-44696](https://jira.hl7.org/browse/FHIR-44696) - Defined a mechanism to support discovery of payer Da Vinci endpoints
* [FHIR-46208](https://jira.hl7.org/browse/FHIR-46208) - Added guidance on how implementers should handle validation in multi-version and multi-profile environments
* [FHIR-37533](https://jira.hl7.org/browse/FHIR-37533) - Defined profiles for use on Reference to allow setting expectations for use of RESTful vs. logical references
* [FHIR-34523](https://jira.hl7.org/browse/FHIR-34523) - Drop expectations for support of UDAP at the HRex level
* [FHIR-34039](https://jira.hl7.org/browse/FHIR-34039) - Added additional guidance around mutual TLS

Member Match:

* [FHIR-44933](https://jira.hl7.org/browse/FHIR-44933) - Corrections where the specification wasn't clear that the patient identifier needs to have a type of UMB and clarified the definition
* [FHIR-42710](https://jira.hl7.org/browse/FHIR-42710) - Made consent optional in $member-match
* [FHIR-42810](https://jira.hl7.org/browse/FHIR-42810) - Extended the member-match operation to support returning an optional FHIR reference to the payer's Patient instance
* [FHIR-38701](https://jira.hl7.org/browse/FHIR-38701) - Ensured member match refers to HRex patient demographics, not US-Core patient
* [FHIR-38691](https://jira.hl7.org/browse/FHIR-38691) - Added guidance on how to manage a match when consent expectations can't be met

Consent:

* [FHIR-42737](https://jira.hl7.org/browse/FHIR-42737) - Tightened policy element to be 1..1 instead of 1..*
* [FHIR-36013](https://jira.hl7.org/browse/FHIR-36013) - Added expectation to capture who gave consent, not just what patient it was for
* [FHIR-35912](https://jira.hl7.org/browse/FHIR-35912) - Ensure consent captures who is authorized to disclose

Other resources:

* [FHIR-40782](https://jira.hl7.org/browse/FHIR-40782) - Relaxed coverage constraints to align with US Core
* [FHIR-37809](https://jira.hl7.org/browse/FHIR-37809) - Dropped ccn identifier expectation from Practitioner and dropped it as mustSupport for Organization

A variety of minor wording clarifications, correction of typos and other non-substantive changes

Also, see the [comparison](comparison-v1.0.0/index.html) between this release and release 1.0.0

### STU 1.0

Initial 'official' release
</div>