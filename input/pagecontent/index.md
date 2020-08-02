  <blockquote class="note-to-balloters">
    <p>
      Based on balloter feedback, this IG has been completely re-written.  The refactoring has been sufficiently large that it is not practical/useful to enumerate a list of changes.
    </p>
  </blockquote>

### Description

The [Da Vinci](https://confluence.hl7.org/display/DVP) Health Record Exchange (HRex) implementation guide (IG) is a foundational guide for all other Da Vinci guides.  It defines FHIR profiles, operations and guidance that are relevant to more than one, and sometimes all, Da Vinci use-case IGs.  In the future, it may define additional types of artifacts such as extensions or value sets.  All HRex artifacts are intended to be use-case independent, though they are specifically tied to the HRex scope.  They may be referenced in RESTful exchanges, passed in CDS Hooks, or manipulated by SMART apps.

As a supporting IG, HRex is expected to continue to evolve as additional shared content needs are identified as part of the Da Vinci work.  Da Vinci use case IGs will derive from this IG and reference specific pages and sections that are relevant to their use-case and mandate the use of the profiles and artifacts defined here, or that are inherited from US Core.  Da Vinci IGs may also refine or further constrain content defined here when the use case requirements are tighter than the general 'shared' requirement.

The scope of Da Vinci is US payor-provider data exchange.  It covers data sharing between payors and payor-to-provider and provider-to-payer data sharing, including data shared via third party systems.  Some of the Da Vinci content may be relevant outside this defined scope (including payer to patient, provider to patient and non-US implementations).  However, [requests for change](http://hl7.org/fhir-issues) should be focused on HRex's official scope.


### Dependencies

At present, HRex is based on [FHIR R4]({{site.data.fhir.path}}).  In addition, HRex is dependent on the [US Core 3.1 (FHIR R4)]({{site.data.fhir.ver.uscore}}) implementation guide.  Wherever possible, Da Vinci tries to leverage US Core profiles, but in some situations, the payor community requires additional constraints or needs to profile resources that are not yet supported by US Core.  It is possible that certain HRex profiles and/or descriptive content may migrate to a future release of US Core, and in some cases, to the base FHIR standard.  In certain instances, Da Vinci IGs will also declare conformance with the [QI Core](http://hl7.org/fhir/us/qicore), which supplements US Core with additional profiles and constraints for use in quality measurements.  This IG is not derived from QI core, but HRex profiles should be generally compliant with the QI Core specification.

In addition, some Da Vinci specifications will make use of content from the following FHIR-related specifications and implementation guides:
* [Bulk Data](https://hl7.org/fhir/uv/bulkdata)
* [C-CDA on FHIR](http://www.hl7.org/fhir/us/ccda)
* [CDS Hooks](https://cds-hooks.org)
* [CQL](https://cql.hl7.org)
* [FHIRPath](http://hl7.org/fhirpath)
* [SMART on FHIR](http://www.hl7.org/fhir/smart-app-launch)


### Navigation

The main menu in this IG is categorized into several primary topics with several sub-topics:

* **Background** provides supporting information relevant for implementers of this IG or Da Vinci guides in general.  These sections may be referenced from other Da Vinci IGs, but do not contain any rules that impact IG conformance.  (Nothing in these sections will ever become 'normative' or define functionality that implementer systems must or must not do.)  These sections *will* provide context to implementers to help them understand other parts of the IG and make better and more efficient decisions with respect to FHIR implementation.
  * [Da Vinci Overview](http://hl7.org/about/davinci) provides an overview of the Da Vinci project and provides guidance on how to get involved in the project and where to find the use-case specific IGs.
  * [FHIR Introduction](fhir.html) highlights the key sections of the FHIR core specification that Da Vinci implementers should be familiar with.
  * [Approaches to Exchanging FHIR Data](exchanging.html) provides a detailed overview of all the mechanisms that FHIR supports for exchanging information.  Implementers do not need to read this, but Da Vinci use case IGs will refer to.
* **Specification** content includes pages that define artifacts or include formal conformance rules that apply to this IG and that may be included by reference in other Da Vinci IGs.
  * [Conformance Expectations](conformance.html) describes conformance language used within the spec and expectations around mustSupport and missing data
  * [Security and Privacy](security.html) provides general expectations to ensure security and privacy of Da Vinci exchanges
  * [Dynamic Registration for SMART Apps](smart-app-reg.html) documents requirements for cross-registration of SMART on FHIR apps
  * [Profile Overview](profiles.html) gives an overview of the profiles defined in this IG and, where relevant, guidance on the use of US Core profiles
  * [Search Parameter Overview](profiles.html) gives an overview of the search parameters defined in this IG and a discussion of how those, along with US Core search parameters should be used
  * [Member Match](OperationDefinition-member-match.html) describes the process to resolve a member as known by a different payer
* **Artifacts** includes links to artifacts (profiles, operations, etc.) defined both in this specification as well as in the imported US Core implementation guide.
* **Support** includes links to the FHIR core specification and the US Core spec, as well as download links for this IG and guidance on tools and support for Da Vinci implementers.

The main menu at the top of all IG pages will allow you to jump to any of the main pages in the IG.  The breadcrumbs bar (right below the menu bar) will let you navigate 'up' to ancestor pages of whatever page you are looking at.  The [Table of Contents (TOC)](toc.html) will show you all pages in the IG and the [Artifacts list](artifacts.html) will list all of the artifacts (profiles, extensions, operations, value sets, etc.) defined in this specification.  As well, this IG makes heavy use of hyperlinks which will allow navigation to relevant sections of this specification and parent specifications.  

### Credits

This IG was developed under the auspices of the [Clinical Interoperability Council (CIC)](http://www.hl7.org/Special/committees/cic) work group.  Current work group co-chairs are:

* **Laura Heermann Langford** - Intermountain Healthcare
* **Russell Leftwich** - InterSystems
* **Lindsey Hoggle** - IRIS Health Solutions, LLC

Da Vinci project coordination is managed by:

* **Robert Dieterle** - Enablecare
* **Viet Nguyen** - Stratametrics
* **Jocelyn Keegan** - Point of Care Partners
* **Dana Marcelonis** - Point of Care Partners
* **Pooja Babbrah** - Point of Care Partners

Initial development of this IG was performed by **Lisa Nelson** - Max MD, with assistance from **Rick Geimer** - Lantana Consulting

IG refactoring and updates for the current release was performed by **Lloyd McKenzie** - Gevity Consulting, with assistance from **Russ Buchanan**, **Theresia Edgar** and **Malia Moore**, also of Gevity.

**Mark Scrimshire** - Newwave and the **Mitre* team provided invaluable assistance with connectathons and reference implementations.

Special thanks go to the numerous Da Vinci members who have participated on conference calls and reviews over the last two years and those who participated in the previous ballot of this IG, as well as those who are participating in this one!

If you are interested in participating in the HRex project: information about our calls, minutes of past discussions, and other information can be found [here](https://confluence.hl7.org/pages/viewpage.action?pageId=40741996) on our HL7 Confluence page.
