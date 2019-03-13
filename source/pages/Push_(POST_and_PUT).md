---
title: Push (POST and PUT)
layout: default
active: Push (POST and PUT)
---

The Push (HTTP POST and PUT) information exchange interaction is a RESTful call to a server's FHIR API. It uses POST and PUT mechanisms to create and update information. A system acting as the Information Client calls a System acting as an Information Server using the FHIR API available on the Information Server.  The call results in new or updated resources on the Information Server or an error in which case content is not added or updated on the server. An OperationOutcome resource is returned to the client. 