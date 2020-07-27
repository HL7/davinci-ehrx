  <blockquote class="stu-note">
    <p>
      Based on balloter feedback, this IG has been completely re-written.  The refactoring has been sufficiently large that it is not practical/useful to enumerate a list of changes.
    </p>
  </blockquote>

### Description

The Da Vinci Payer Health Record exchange (HRex) Framework/library specifies the FHIR elements used in multiple Da Vinci implementation guides. This includes FHIR profiles, functions, operations, and constraints on other specifications such as CDS-Hooks and other aspects of Da Vinci Use Cases that are common across more than a single use case.

Da Vinci HRex Implementation Guide (IG) will make use of US Core profiles that are based on the FHIR R4 specification wherever practical. The HRex IG will use the HL7 FHIR Release 4/US Core STU3 specification as its base but will provide additional guidance and documentation to support implementations that follow the HL7 FHIR STU3/US Core STU2 and HL7 FHIR DSTU2/Argonaut specifications.

The HRex profiles documented in this IG will be used to exchange data between providers systems (e.g. EHRs) and other providers, payers, and third-party applications were appropriate. In addition, exchanges from payer systems to providers, other payers, and third-party applications are supported by the HRex profiles and operations.

HRex may define new extensions, profiles, value sets, constraints/extension to other specification (e.g. specific CDS-Hooks) that are specific Da Vinci requirements. Where appropriate these Da Vinci specific artifacts will be promoted for incorporation into the future versions of existing standards (e.g. R4 US Core profiles) and deprecated in this guide on publication in the updated standard.



<!-- Consider SMART on FHIR, CDS Hooks, other technologies? -->