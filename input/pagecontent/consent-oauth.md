<div class="stu-note">
This page is considered 'draft' and has not undergone ballot or received wide community review.  It will be subject to ballot in a future release of this specification and breaking changes may be introduced as part of that process.  The page is included in this HRex release to meet regulatory requirements coming into force in 2022 to provide an initial basis for interoperability between payers subject to those regulations.
</div>

### Overview

There are several exchanges envisioned by Da Vinci projects where a patient's consent to the exchange of data is necessary to enable the flow of data.  This consent may be received by the data consumer in many ways, including signed paper, recorded directive by phone, electronic, etc.  The intended workflow is to establish authorization between data source and data consumer once, then have the data consumer query the source as needed for the period for which authorization has been granted.  At present, this requirement is expected to primarily exist in payer-to-payer exchanges, but in the future, it may also encompass some exchanges between payers and providers or even between provider implementations.

This implementation guide leverages the [HL7 UDAP B2B]({{site.data.fhir.udap}}b2b.html) specification, which in turn is based on the [UDAP JWT-based Client Authentication specification](https://www.udap.org/udap-jwt-client-auth.html).  Because the latter is not version-controlled or officially published as a standard, a snapshot of the 2018-08-14 version on which this specification is based can be found [here](UDAP-JW-Client-Auth_2018-08-14.pdf).

The implementation guide conveys key information about the consent provided and to establish a token that can be used to authorize subsequent queries.  UDAP allows credential based and authorization code-based authorization processes.  Systems compliant with this IG **SHALL** support UDAP B2B credential-based access.  All such exchanges **SHALL** be conducted under mutually authenticated TLS.

### Workflow

The following diagram shows how this authentication process will fit into the overall exchange process.  

  {% include query-workflow.svg %}
  
The diagram shows this process being invoked twice, for the scenario where both parties have a need to access information from the other (e.g. when payers have simultaneous coverage in force for the same patient).  In the simple scenario where only one system requires access, only the first authentication process would occur.


### OAuth Server

The HL7 UDAP specification does not define a mechanism for the determination of the OAuth server location.  We expect that omission to be addressed in a future release.  In the meantime, where the OAuth server location is not known by prior arrangement or registry discovery, clients **MAY** dynamically determine the OAuth server for a particular FHIR endpoint by using the mechanisms established by the [SMART App Launch framework](http://hl7.org/fhir/smart-app-launch) - either the CapabilityStatement-based approach of release 1 or the proposed '.well-known' approach of release 2.

### Request Details

While not explicitly described in the HL7 UDAP B2B specification, clients SHALL specify the <code>grant_type</code> parameter with a value of "client_credentials".  The scope parameter is not required and **SHALL** be interpreted as "patient/*.rs" if absent as defined by [SMART App Launch framework](http://hl7.org/fhir/smart-app-launch/2021May/scopes-and-launch-context.html).  Systems need not support other scopes and **SHALL** reject scopes they do not recognize.

The JWT appearing in the <code>client_assertion</code> includes a mandatory <code>sub</code> element containing the client id as registered with the data source's authentication server.  Because the client will already have been identified as part of the mutual TLS verification process, the client id **MAY** be specified as "unregistered", in which case, the identity **SHALL** be determined based on the mutual TLS-confirmed client identity.  

When signing the JWT in the <code>client_assertion</code> portion of the OAuth request, the x.509 certificate used in the signature **MAY** (and in most cases will) be the same used in the mutual TLS process.

The draft of the HL7 UDAP B2B specification mandates that <code>purpose_of_use</code> be specified as part of the B2B authorization extension.  This requirement may be omitted in the final published version of the HL7 UDAP specification.  For now, implementations may satisfy the requirement by specifying all high-level purposes of use that may be relevant for the period for which access is sought.  E.g. 

<code>"purpose_of_use": ["HMARKT","HOPERAT","HPAYMT","HRESCH","PATRQT","TREAT"]</code>

would cover all possible purposes of use - marketing, operations, payment, research, patient request and treatment.  Finer-grained Da Vinci implementation guides may provide additional guidance about what purpose-of-use codes must or may be present or supported.

### Consent

Implementations **SHALL** populate the <code>consent_reference</code> with a URL that refers to either a FHIR Consent or a DocumentReference that conveys the patient-signed consent.  The content referenced **SHALL** be sufficient to permit audit confirmation that the consent was indeed granted by the member or an authorized agent.

The HL7 UDAP B2B specification mandates that the <code>consent_reference</code> be resolvable to either a DocumentReference or Consent resource.  This IG further constrains this expectation to be a Consent resource adhering to the [HRex Consent profile](StructureDefinition-hrex-consent.html).  This means that the server on which the Consent is stored **SHALL** support a [read]({{site.data.fhir.path}}http.html#read) operation.

A key aspect of this Consent is the indication of the time-period over which the Consent is valid.  Data consumers **SHALL NOT** request initial access or a refresh token unless the Consent referenced covers the maximum time period (1 hour) for which authorization might be granted.  If the Consent is updated in any way (e.g. revoked), the Data source **SHALL** dispose of any token granted and no longer use it.  Data sources **SHOULD* retrieve the Consent to verify this requirement has been met prior to granting each authorization or renewal.  If the Consent referenced is invalid according to the profile or otherwise unacceptable, the Data Source **SHOULD** include an [OperationOutcome]({{site.data.fhir.path}}operationoutcome.html) that describes any issues found as the HTTP Body accompanying the appropriate HTTP error code.

#### Consent Policy

For compliance with this IG, <code>consent_policy</code> **SHALL** be present in the hl7-b2b extension and at least one of the policy repetitions specified must be one of the following two URIs.  While other policies may be present, compliance with HRex systems does not require that any others be recognized.

<a name="regular"> </a>
<code>http://hl7.org/fhir/us/davinci-hrex/consent-oauth#regular</code> - Access is granted to all patient information that is not considered to be 'sensitive' according to U.S. state or federal regulation.

<a name="sensitive"> </a>
<code>http://hl7.org/fhir/us/davinci-hrex/consent-oauth#sensitive</code> - Access is granted to all patient information, including that considered to be 'sensitive' according to U.S. state or federal regulation.

### Refresh

Access requests for HRex are likely to need to be active for considerably longer than the 1 hour maximum permitted by the HL7 UDAP specification - potentially as long as 13 months.  For this reason, authorizations **SHALL** return a <code>refresh_token</code> to allow more extended access.  The authorization server **SHALL** enforce that the client application is the same as that who requested the original token.