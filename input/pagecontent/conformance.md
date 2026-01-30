Da Vinci IGs, including this one, make use of conformance language such as **SHALL**, **SHOULD** and **MAY** to describe the behavior of systems. The meaning of these words shall be interpreted as per the [FHIR core spec]({{site.data.fhir.path}}conformance-rules.html#conflang).

### MustSupport

The following rules around mustSupport elements are expected to apply to all Da Vinci IGs. Some Da Vinci IGs might impose additional conformance expectations and some Da Vinci IGs might choose not to reference this guidance and define their own independent set of expectations.

In the context of an HRex compliant IG, mustSupport on any data element are interpreted as follows:

- §conf-1^source^exchange:Data Sources **SHALL** be capable of populating the data element when sharing resources compliant with the profile.§ I.e. the system must be able to demonstrate the population and sharing of the element, but it is acceptable to omit the element if the system doesn't have values in a particular instance. A system that is incapable of ever sharing the element would be non-conformant.

- §conf-2^consumer^exchange:Data Consumers **SHALL** be capable of processing resource instances containing the data elements without generating an error or causing the application to fail.§

§§conf-3?^source^exchange:If the minimum cardinality of an element is greater than 0 – i.e. the element is ‘required’, then the element **SHALL** be present in the instance and **SHALL** have a value unless a listed exception applies.^

- If the minimum cardinality of an element is greater than 0 – i.e. the element is 'required', then the element **SHALL** be present in the instance and **SHALL** have a value unless:
  - The profile explicitly declares the dataAbsentReason extension or other extension for the element, in which case an extension can be present in place of the value.
  - The profile is inherited from U.S. Core, in which case a dataAbsentReason extension can be sent in place of the value even where dataAbsentReason is not explicitly declared in the profile.

§§

- §conf-4^consumer^processing:Data Consumers **SHALL** interpret missing data elements within resource instances as data not being present in the Data Source's systems or was not deemed to be shareable with the Data Consumer for privacy or other business reasons.§

- §conf-5?^source^exchange:Where the value set for an element includes concepts such as "unknown", "refused to answer", "not available" or where dataAbsentReason is explicitly referenced in a profile, then Data Sources **SHALL** use these values/that extension to communicate the reason for missing data.§

- §conf-6^consumer^exchange:Data Consumers **SHALL** be able to process resource instances containing data elements that have extensions in place of a value where such extensions are declared as part of the profile.§

**NOTE:** *mustSupport* indicates what Da Vinci conformant systems are expected to be able to handle. §conf-7^consumer^exchange:Systems are free to include additional data - and Data Consumers **SHOULD NOT** reject instances that contain unexpected data elements if those elements are not [modifier elements]({{site.data.fhir.path}}conformance-rules.html#isModifier).§ However, sending systems should be aware that they cannot count on receivers storing, processing or doing anything other than ignoring data that is not marked as *mustSupport*.

Also see the mustSupport rules for the [US Core]({{site.data.fhir.ver.uscore7}}/must-support.html) implementation guides, which apply to content adhering to data elements profiled in those guides.

### Referencing US Core Profiles

Many of the profiles in this guide reference other FHIR resources that are US Core profiles. This is defined in the formal profile definitions. For example, US Core Patient. §conf-8?^source^exchange:For any other references not formally defined in a US Core profile, the referenced resource **SHOULD** be a US Core profile if a US Core profile exists for the resource type.§

Many of the profiles are based on US Core 7.0.0 while also declaring conformance with US Core 6.1.0 and 3.1.1. In some cases, the 7.0.0 and/or 6.1.0 releases introduce new "mustSupport" elements that are not mustSupport in 3.1.1. The intention of this implementation guide is NOT to move forward the timelines by which EHRs and/or payers must support USCDI 3 and 4 content. Rather, it is to allow seamless transition as systems start to support the newer US Core releases as systems start to bring them on stream. As such, clients and servers have no obligations with respect to elements that are newly mustSupport in 6.1.0 or 7.0.0 beyond "don't error if these elements are present" until such time as those systems claim conformance with the US Core release which introduces those elements as mustSupport. Once a system claims conformance to US Core 6.1.0 or 7.0.0, then the conformance expectations of those release of the US Core guide come into play.
