This implementation guide uses terminology, notations and design principles that are specific to FHIR.  Before reading this implementation guide, it is important to be familiar with some of the basic principles of FHIR as well as general guidance on how to read FHIR specifications.  Readers who are unfamiliar with FHIR are encouraged to read (or at least skim) the following prior to reading the rest of this implementation guide.

* [FHIR overview]({{site.data.fhir.path}}overview.html)
* [Developer's introduction]({{site.data.fhir.path}}overview-dev.html) (or [Clinical introduction]({{site.data.fhir.path}}overview-clinical.html))
* [FHIR data types]({{site.data.fhir.path}}datatypes.html)
* [Using codes]({{site.data.fhir.path}}terminologies.html)
* [References between resources]({{site.data.fhir.path}}references.html)
* [How to read resource & profile definitions]({{site.data.fhir.path}}formats.html) and additional [IG reading guidance](https://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html)

* [Base resource]({{site.data.fhir.path}}resource.html)

This implementation guide supports the [R4]({{site.data.fhir.path}}index.html) version of the FHIR standard and builds on the [US Core 3.1 (FHIR R4)]({{site.data.fhir.ver.uscore3}}), [US Core 6.1 (FHIR R4)]({{site.data.fhir.ver.uscore6}}), and [US Core 7.0 (FHIR R4)]({{site.data.fhir.ver.uscore7}}) implementation guides.  Implementers therefore need to familiarize themselves with the profiles in that guide as well as with the FHIR resources used within the implementation guide(s) they will be implementing.  The general implementation notes and guidance on the resource pages of these guides will apply to Da Vinci implementations as they would in any other.  A complete list of the FHIR resources in the core specification can be found [here]({{site.data.fhir.path}}resourcelist.html)

The resources profiled or otherwise used in this specification include:

<table class="grid">
  <thead>
    <tr>
      <th>Resource</th>
      <th>Usage</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><a href="http://hl7.org/fhir/r5/actordefinition.html">ActorDefinition</a></td>
      <td>Used to help define conformance expectations for this guide</td>
    </tr>
    <tr>
      <td><a href="{{site.data.fhir.path}}binary.html">Binary</a></td>
      <td>Used when exposing examples of the .well-known file for <a href="endpoint-discovery.html">payer endpoint discovery</a></td>
    </tr>
    <tr>
      <td><a href="{{site.data.fhir.path}}bundle.html">Bundle</a></td>
      <td>Used in polling responses and subscription notifications when monitoring <a href="task.html">Tasks</a></td>
    </tr>
    <tr>
      <td><a href="{{site.data.fhir.path}}codesystem.html">CodeSystem</a></td>
      <td>Used to define additional codes required for various HRex use-cases</td>
    </tr>
    <tr>
      <td><a href="{{site.data.fhir.path}}consent.html">Consent</a></td>
      <td>Used as part of the <a href="OperationDefinition-member-match.html">member match</a> process</td>
    </tr>
    <tr>
      <td><a href="{{site.data.fhir.path}}conceptmap.html">ConceptMap</a></td>
      <td>Provides mappings between codes from value sets for different US Core versions</td>
    </tr>
    <tr>
      <td><a href="{{site.data.fhir.path}}coverage.html">Coverage</a></td>
      <td>Used as part of the <a href="OperationDefinition-member-match.html">member match</a> process</td>
    </tr>
    <tr>
      <td><a href="{{site.data.fhir.path}}operationdefinition.html">OperationDefinition</a></td>
      <td>Used when defining the <a href="OperationDefinition-member-match.html">member match</a> process</td>
    </tr>
    <tr>
      <td><a href="{{site.data.fhir.path}}organization.html">Organization</a></td>
      <td>Used in examples of the US-core version-independent and Da Vinci-specific <a href="StructureDefinition-hrex-organization.html">Organization profile</a></td>
    </tr>
    <tr>
      <td><a href="{{site.data.fhir.path}}parameters.html">Parameters</a></td>
      <td>Used to convey requests and responses for the <a href="OperationDefinition-member-match.html">member match</a> process</td>
    </tr>
    <tr>
      <td><a href="{{site.data.fhir.path}}practitionerrole.html">PractitionerRole</a></td>
      <td>Used in examples of the US-core version-independent and Da Vinci-specific <a href="StructureDefinition-hrex-practitionerrole.html">PractitionerRole profile</a></td>
    </tr>
    <tr>
      <td><a href="{{site.data.fhir.path}}provenance.html">Provenance</a></td>
      <td>Used in examples of the US-core version-independent and Da Vinci-specific <a href="StructureDefinition-hrex-provenance.html">Provenance profile</a></td>
    </tr>
    <tr>
      <td><a href="http://hl7.org/fhir/r5/requirements.html">Requirements</a></td>
      <td>Used to computably represent the conformance expectations for this guide</td>
    </tr>
    <tr>
      <td><a href="{{site.data.fhir.path}}searchparameter.html">SearchParameter</a></td>
      <td>Used in defining additional search parameters used in various Da VInci IGs</td>
    </tr>
    <tr>
      <td><a href="{{site.data.fhir.path}}structuredefinition.html">StructureDefinition</a></td>
      <td>Used when defining profiles, logical models, and extensions in this guide</td>
    </tr>
    <tr>
      <td><a href="{{site.data.fhir.path}}task.html">Task</a></td>
      <td>Used when soliciting information, asking for forms to be filled out, etc.</td>
    </tr>
    <tr>
      <td><a href="{{site.data.fhir.path}}valueset.html">ValueSet</a></td>
      <td></td>
    </tr>
  </tbody>
</table>

Implementers should review the general descriptions and usage notes for these resources for additional implementation guidance