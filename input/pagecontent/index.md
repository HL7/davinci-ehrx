  <blockquote class="note-to-balloters">
    <p>
      This IG has undergone a number of changes to support the needs of the different Da Vinci IGs that use it.  The most significant is support for USCDI v3, though there are a number
      of other significant changes as well.  Please refer to the <a href="history.html">History</a> page for a detailed list of substantive changes.
    </p>
  </blockquote>
  
### Introduction

The [Da Vinci](https://confluence.hl7.org/display/DVP) Health Record Exchange (HRex) implementation guide (IG) is a foundational guide for all other Da Vinci guides.  It defines FHIR profiles, operations and guidance that are relevant to more than one, and sometimes all, Da Vinci use-case IGs.  In the future, it could define additional types of artifacts such as extensions or value sets.  All HRex artifacts are intended to be use-case independent, though they are specifically tied to the HRex scope.  They might be referenced in RESTful exchanges, passed in CDS Hooks, or manipulated by SMART apps.  Because the artifacts defined here are use-case independent, this IG does not include a use-case or patient stories section.  Use-cases can instead be found in the various Da Vinci guides that leverage the artifacts defined here for specific business purposes.

As a supporting IG, HRex is expected to continue to evolve as additional shared content needs are identified as part of the Da Vinci work.  Da Vinci use case IGs will derive from this IG and reference specific pages and sections that are relevant to their use-case and mandate the use of the profiles and artifacts defined here, or that are inherited from US Core.  Da Vinci IGs may also refine or further constrain content defined here when the use case requirements are tighter than the general 'shared' requirement.

The scope of Da Vinci is US payer and provider data exchange with each other and other covered entities under HIPAA (including their business associates).  It includes data exchange with the patient/member.  The exchanges are typically ones that are 'of interest' in value-based care.  Some of the Da Vinci content may be relevant outside this defined scope (e.g. non-US implementations). However, [requests for change](http://hl7.org/fhir-issues) should be focused on HRex’s official scope.


### Navigation

The main menu in this IG is categorized into several primary topics with several sub-topics:

* **Background** provides supporting information relevant for implementers of this IG or Da Vinci guides in general.  These sections may be referenced from other Da Vinci IGs, but do not contain any rules that impact IG conformance.  (Nothing in these sections will ever become 'normative' or define functionality that implementer systems must or must not do.)  These sections *will* provide context to implementers to help them understand other parts of the IG and make better and more efficient decisions with respect to FHIR implementation.
  * [Da Vinci Overview](http://hl7.org/about/davinci) provides an overview of the Da Vinci project and provides guidance on how to get involved in the project and where to find the use-case specific IGs.
  * [Guiding Principles](davinci-guiding-principles.html) describes key principles that underly all Da Vinci interoperability.
  * [FHIR Introduction](fhir.html) highlights the key sections of the FHIR core specification that Da Vinci implementers should be familiar with.
  * [Approaches to Exchanging FHIR Data](exchanging.html) provides a detailed overview of all the mechanisms that FHIR supports for exchanging information.  Implementers do not need to read this, but Da Vinci use case IGs may refer to this information.
<div class="new-content" markdown="1">
  * [Managing Instance Validation](validation.html) gives general guidance about managing validation of Da Vinci instances across different IGs and different versions of an IG.
</div>
  * [Participants and Credits](credits.html) provides thanks to key contributors to the creation of this guide.

* **Specification** content includes pages that define artifacts or include formal conformance rules that apply to this IG and that may be included by reference in other Da Vinci IGs.
  * [Conformance Expectations](conformance.html) describes conformance language used within the spec and expectations around mustSupport and missing data
  * [Security and Privacy](security.html) provides general expectations to ensure security and privacy of Da Vinci exchanges
  * [Task-based Queries](task.html) describes the mechanisms for using Task to ask for information
  * [Dynamic Registration for SMART Apps](smart-app-reg.html) documents requirements for cross-registration of SMART on FHIR apps
  * [Member Match](OperationDefinition-member-match.html) describes the process to resolve a member as known by the target payer system

  
* **Artifacts** includes links to artifacts (profiles, operations, etc.) defined both in this specification as well as in the imported US Core implementation guides.  This index also includes a list of all of the examples - there are at least two examples for every profile, sometimes more to demonstrate the range of possible content supported.  (Examples relevant to a given profile are also linked to from the profile page.)
* **Base Specs** includes links to the FHIR core specification as well as the US Core specs that underlie this IG.
* **Support** includes various links for support and guidance, as well as download links for this IG and guidance on tools and support for Da Vinci implementers.

The main menu at the top of all IG pages will allow you to jump to any of the main pages in the IG.  The breadcrumbs bar (right below the menu bar) will let you navigate 'up' to ancestor pages of whatever page you are looking at.  The [Table of Contents (TOC)](toc.html) will show you all pages in the IG and the [Artifacts list](artifacts.html) will list all of the artifacts (profiles, extensions, operations, value sets, etc.) defined in this specification.  As well, this IG makes heavy use of hyperlinks which will allow navigation to relevant sections of this specification and parent specifications.

<div class="new-content" markdown="1">

NOTE: Past versions of this IG included a cross-reference of what HRex and US Core profiles were used in which Da Vinci IGs.  Experience has proven that this list is very difficult to keep current given the release frequency of HRex as compared to other Da Vinci IGs.  We have removed this summary and instead encourage readers to leverage the [FHIR Statistics](https://www.fhir.org/guides/stats2/hl7-profiles-usages-other.html) page.  Search for the canonical of the profile you're interested in seeing the use of, and this index will indicate which artifacts leverage that profile (either pointing to it or deriving from it).


### Dependencies

<div class="modified-content" markdown="1">

At present, HRex is based on [FHIR R4]({{site.data.fhir.path}}).  In addition, this guide also relies on a number of parent implementation guides:

{% include dependency-table-short.xhtml %}

This implementation guide defines additional constraints and usage expectations above and beyond the information found in these base specifications.

As seen in the above table, HRex is dependent on the [US Core 3.1 (FHIR R4)]({{site.data.fhir.ver.uscore3}}), [US Core 6.1 (FHIR R4)]({{site.data.fhir.ver.uscore6}}) and [US Core 7.0 (FHIR R4)]({{site.data.fhir.ver.uscore7}}) implementation guides.  The first is supported for those systems limited to [United States Core Data for Interoperability (USCDI) v1](https://www.healthit.gov/isp/united-states-core-data-interoperability-uscdi) capabilities, the second is for upcoming regulatory requirements mandating support for [USCDI v3](https://www.healthit.gov/isp/united-states-core-data-interoperability-uscdi#uscdi-v3), and the last is to enable support for proposed regulations mandating support for [USCDI v4](https://www.healthit.gov/isp/united-states-core-data-interoperability-uscdi#uscdi-v4).  Wherever possible, Da Vinci profiles strive to comply with all three releases, simplifying implementation for those who will need to support varying regulatory expectations over time.

In some situations, the payer community requires additional constraints or needs to profile resources that are not yet supported by US Core.  In these cases, this IG does not derive from the US Core profiles, though it does align with them as much as possible.  It is possible that certain HRex profiles and/or descriptive content may migrate to a future release of US Core, and in some cases, to the base FHIR standard.  In certain instances, Da Vinci IGs will also declare conformance with the [QI Core](http://hl7.org/fhir/us/qicore), which supplements US Core with additional profiles and constraints for use in quality measurements.  This IG is not derived from QI core, but HRex profiles will be generally compliant with the QI Core specification.

</div>

In addition to the direct dependencies listed above, some Da Vinci specifications will make use of content from the following FHIR-related specifications and implementation guides:
* [Bulk Data](https://hl7.org/fhir/uv/bulkdata)
* [C-CDA on FHIR](http://www.hl7.org/fhir/us/ccda)
* [CDS Hooks](https://cds-hooks.org)
* [CQL](https://cql.hl7.org)
* [FHIRPath](http://hl7.org/fhirpath)
* [SMART on FHIR](http://www.hl7.org/fhir/smart-app-launch)


### Intellectual Property Considerations
This implementation guide and the underlying FHIR specification are licensed as public domain under the [FHIR license](http://hl7.org/fhir/R4/license.html#license). The license page also describes rules for the use of the FHIR name and logo.

{% include ip-statements.xhtml %}

</div>