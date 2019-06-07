---
title: Pull (GET)
layout: default
active: Pull (GET)
---

## Information Exchange Interaction Description
The Pull (GET) information exchange interaction is a RESTful option for FHIR APIs. It uses the GET mechanisms to query information through a FHIR API. A system acting as the Information Client queries a System acting as an Information Server using the FHIR API available on the Information Server. The query results are returned to the Information Client.
## Actor Interaction Diagram

<table>
	<tr>
		<td>
<img src="data:image/png;base64,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"/>
		</td>
	</tr>
	</table>

## Detailed Specification
For a more detailed specification of the <a href="https://build.fhir.org/ig/HL7/davinci-ehrx/HRex_Interactions.html">Pull (GET) Interaction</a>, consult the HRex implementation guide.