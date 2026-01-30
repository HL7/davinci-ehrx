The following content is intended to apply to all Da Vinci IGs. §sec-1^igauthor^business:IGs derived from HRex **SHOULD** all reference this section, though they can qualify and supplement the content here as appropriate for the specific technologies they are using, and the threat environment and privacy considerations involved in their specific use case.§

### Statutes, Regulations, and Guiding Principles

1. §sec-2^implementer^exchange,processing:All implementations of any Da Vinci FHIR Implementation Guides (IG) **SHALL** meet all current relevant Federal and State statutes and regulations regarding security and privacy.§

2. §sec-3?^igauthor^business:All IGs **SHALL** use applicable technical standards required by current regulations published by the Centers for Medicare and Medicaid Services (CMS) and the Assistant Secretary for Technology Policy and Office of the National Coordinator for Health Information Technology (ASTP/ONC) (allowing for voluntary use through the [SVAP](https://www.healthit.gov/isa/standards-version-advancement-process#:~:text=ONC%20has%20established%20the%20voluntary,of%20Certification%20requirement%20(%C2%A7%20170.405))) unless an exception has been granted.§

3. §sec-4^implementer,igauthor^business,exchange,processing:All IGs and implementations **SHOULD** follow the current [Da Vinci Guiding Principles](davinci-guiding-principles.html).§

4. §sec-5^implementer^exchange,processing:All IGs and implementations **SHALL** support patient/member consent and/or treatment of sensitive information consistent with Federal and State statutes and regulations.§

5. §sec-6?^implementer^exchange,processing:All IGs and implementations **SHOULD** support the consent and data sharing policies of trading partners involved in the exchange that are more protective so long as policies are consistent with or more restrictive than Federal and State statutes and regulations.§

### FHIR Clinical Safety, Security and Implementation Guidance

§sec-7?^implementer^exchange,processing:All FHIR Implementation Guides **SHOULD** follow the FHIR Security guidance and FHIR Implementer's Safety guidance as defined in the relevant FHIR specification (e.g. Release 4.1.0) where applicable and not superseded by this Section or specific IG requirements.§

1. The FHIR Security specification provides guidance related to communication security, authentication, authorization/access control, audit, digital signatures, attachments, labels, narrative, and input validation. The FHIR security specification is available [here]({{site.data.fhir.path}}security.html).

2. The FHIR Implementer's Safety specification is a check-list to help implementers be sure that they have considered all the parts of FHIR that impact their system design regarding safety. The FHIR safety check list is available [here]({{site.data.fhir.path}}safety.html).

### Security/Privacy Related Technologies Including Explicit Consent and Security Labels

1. While past ASTP/ONC regulations did have optional rules for data labeling and consent directives, as of May 2020, ASTP/ONC has elected to not establish rules for either data labeling and consent directives as part of the [Final Rule for the 21st Century Cures Act](https://www.federalregister.gov/documents/2020/05/01/2020-07419/21st-century-cures-act-interoperability-information-blocking-and-the-onc-health-it-certification).

2. At present there is no explicit regulatory requirement for the use of these technologies in Da Vinci specifications.

3. However, §sec-8^implementer^exchange:to meet the statutes, regulations, and guiding principles above, consent directives and security labels **MAY** be considered and used.§

4. Organizations which plan to take advantage of these additional capabilities are responsible for negotiating support for these mechanisms between trading partners. The FHIR implementation guide defining the recommended standard is the [FHIR Data Segmentation for Privacy IG](http://hl7.org/fhir/uv/security-label-ds4p).

### Exchange Security

- §sec-9^implementer^exchange:When exchanging Protected Health Information (PHI) between entities, the exchange **SHOULD** use the current version and **SHALL** use either current or the immediately prior release of [Transport Level Security (TLS)](https://tools.ietf.org/html/rfc8446) as specified by the current release of [National Institute of Standards and Technology (NIST) guidelines (SP 800-52)](https://csrc.nist.gov/publications/detail/sp/800-52/rev-2/final).§ §sec-10^implementer^exchange:TLS **SHALL** be implemented as per [RFC8705](https://datatracker.ietf.org/doc/html/rfc8705).§

§§sec-11?^implementer^exchange:When the identity of the requesting or receiving party is important, implementations **SHOULD** use one or more of the preferred authorization mechanisms.^

- When the identity of the requesting or receiving party is important, implementations **SHOULD** use one or more of the following as defined in the specific Da Vinci IG:
  1. the [SMART App Launch Authorization](https://hl7.org/fhir/smart-app-launch/index.html),
  2. mutually authenticated TLS,
  3. the [FAST HL7 UDAP Security for Scalable Registration, Authentication, and Authorization IG](https://hl7.org/fhir/us/udap-security), or
  4. the OAuth Server to Server Authentication as defined in [SMART Back-end Services](https://hl7.org/fhir/smart-app-launch/backend-services.html).§

§§

- §sec-12?^implementer^exchange:When using OAuth (either through SMART or UDAP), OAuth tokens issued **SHALL** be tied to the client system's certificate.§

§sec-13^implementer^exchange:When mutual TLS is used, it **SHALL** be done in accordance with [RFC8705](https://datatracker.ietf.org/doc/html/rfc8705)§ There are certain constraints on this RFC that apply across all Da Vinci IGs:

- §sec-14^implementer^exchange:The TLS authorization mechanism **SHALL** be PKI-Mutual TLS (i.e. not self-signed certificates)§

- §sec-15^implementer^exchange:Signing options **SHALL** use URIs, not DNS, IP, email, etc.§

- §sec-16^implementer^exchange:If mutual TLS is used with OAuth, the OAuth tokens **SHALL** be bound to the client system's certificate (and are therefore not shareable)§

Note: There is ongoing work to enhance the capabilities of the above specifications to ensure a more secure exchange that recognizes issues related to fine grain scopes.

### Additionally Protected Information

Additionally protected information can include items defined by Federal (e.g. 42 CFR Part 2), State (e.g. many states protect substance abuse disorder, HIV diagnosis/treatment records, release of information on minors – note this is not an exhaustive list) statutes and regulations. Organizations can also provide additional protection for specific types of information that are deemed sensitive. The following guidelines apply unless otherwise dictated by statute or regulation:

1. §sec-17?^source^exchange:Where permitted by law and in accordance with legal requirements, systems **SHALL** always support release of additionally protected information.§

2. §sec-18^source^exchange:Implementations **SHALL** ensure that release of the information without explicit request of the patient/member is based on organization policy consistent with Federal and State regulations.§ Examples are legal requests for information and "break glass" to treat a patient that is unable to provide consent.

### Security Contexts for Da Vinci IGs

Da Vinci IGs span several security contexts related to the exchange of information between requester and supplier of data. These security contexts include:

#### Exchange without PHI

1. Access to openly available data (e.g. Payer's provider directory)
   1. No identity, access, authentication, or audit requirements
   2. Access restrictions are only imposed to protect the site or manage the ability of the site to handle valid requests (e.g. protection against Denial of Service attacks)

2. Access to Sensitive Business Information (e.g. open schedule slots for a provider, blinded and aggregated patient data)
   1. Identity, access, authentication, and/or audit requirements are up to the Information Supplier
   2. Requirements should be consistent with current best practice for such information (if access includes exchange of PHI see the following section)

3. Exchange of a token or internal key
   1. Secure exchange between trusted entities
   2. Access rights are inherent in the token
   3. Internal key does not necessarily imply access rights
   4. Requirements should be consistent with current best practice for such information (if access includes exchange of any unencrypted PHI see the following section)

#### Exchange of PHI for Treatment, Payment, Operations (TPO) (as defined by HIPAA)

This includes exchange of PHI between:

- two covered entities,
- a covered entity with a third party (e.g. for quality reporting), or
- a covered entity and the member/patient.

In all cases, (in accordance with HIPAA security and privacy rules):

1. §sec-19^source^storage:Information Source systems **SHALL** log all IDs, access rights, requests, and exchanges.§

2. §sec-20^source^processing:Information Source systems **SHALL** verify rights of the requestor to have access to the member's/patient's record.§

| **Requesting Information** | **Information Supplier** | **Covered by HIPAA under** (see regulations for details) | **Automated Declaration of Purpose of Use on Request** |
|---------------------------|-------------------------|--------------------------------------------------------|-------------------------------------------------------|
| Patient/Member | Covered Entity | Right of Access | N/A |
| Provider | Provider | TPO | (need process) |
| Provider | Payer | TPO | (need process) |
| Payer | Payer/Provider | PO including Coordination of Care | (need process) |
| Other (e.g. CMS) | Provider/Payer | PO (member authorization where required) | (need process) |

*Note: (need process) – there is no current mechanism (outside of CommunicationRequest) to declare a purpose of use when accessing data using RESTful mechanisms (e.g. GET) – the standards for the need to be addressed within HL7.*

#### Exchange via Business Associates (BA) – for a Covered Entity

1. Both Covered Entity and BA are defined and scoped by HIPAA
2. Requires a HIPAA compliant Business Associate Agreement (BAA)
3. BA inherits all the requirements and responsibilities of the covered entity that are not reserved by the covered entity (e.g. disclosure reporting)
