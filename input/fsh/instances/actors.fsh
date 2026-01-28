Instance: hrex-implementer-actor
InstanceOf: ActorDefinition
Title: "HRex Implementer"
Usage: #definition
* id = "hrex-implementer"
* url = "http://hl7.org/fhir/us/davinci-hrex/ActorDefinition/hrex-implementer"
* name = "HRexImplementerActor"
* description = "Any system (or collection of systems) that implements Da Vinci functionality."
* type = #system
* insert CommonActor

Instance: hrex-igauthor-actor
InstanceOf: ActorDefinition
Title: "HRex IG Author"
Usage: #definition
* id = "igauthor"
* url = "http://hl7.org/fhir/us/davinci-hrex/ActorDefinition/igauthor"
* name = "HRexIgAuthorActor"
* description = "An individual or organization defining Da Vinci implementation guides"
* type = #person
* insert CommonActor

Instance: hrex-source-actor
InstanceOf: ActorDefinition
Title: "Data Source"
Usage: #definition
* id = "source"
* url = "http://hl7.org/fhir/us/davinci-hrex/ActorDefinition/source"
* name = "HRexSourceActor"
* description = "A Da Vinci system that shares data with another system."
* type = #system
* insert CommonActor

Instance: hrex-consumer-actor
InstanceOf: ActorDefinition
Title: "Data Consumer"
Usage: #definition
* id = "consumer"
* url = "http://hl7.org/fhir/us/davinci-hrex/ActorDefinition/consumer"
* name = "HRexConsumerActor"
* description = "A Da Vinci system that accepts data from another system."
* type = #system
* insert CommonActor

Instance: hrex-disc-server-actor
InstanceOf: ActorDefinition
Title: "Discovery Server"
Usage: #definition
* id = "disc-server"
* url = "http://hl7.org/fhir/us/davinci-hrex/ActorDefinition/disc-server"
* name = "HRexDiscoveryServerActor"
* description = "A Da Vinci payer system that surfaces an endpoint discovery .wellknown file."
* type = #system
* insert CommonActor

Instance: hrex-disc-client-actor
InstanceOf: ActorDefinition
Title: "Discovery Client"
Usage: #definition
* id = "disc-client"
* url = "http://hl7.org/fhir/us/davinci-hrex/ActorDefinition/disc-client"
* name = "HRexDiscoveryClientActor"
* description = "A Da Vinci client that accesses an endpoint discovery .wellknown file."
* type = #system
* insert CommonActor

Instance: hrex-mm-client-actor
InstanceOf: ActorDefinition
Title: "Member Match Client"
Usage: #definition
* id = "mm-client"
* url = "http://hl7.org/fhir/us/davinci-hrex/ActorDefinition/mm-client"
* name = "HRexMemberMatchClientActor"
* description = "A Da Vinci system that invokes the member match operation."
* type = #system
* insert CommonActor

Instance: hrex-mm-server-actor
InstanceOf: ActorDefinition
Title: "Member Match Server"
Usage: #definition
* id = "mm-server"
* url = "http://hl7.org/fhir/us/davinci-hrex/ActorDefinition/mm-server"
* name = "HRexMemberMatchServerActor"
* description = "A Da Vinci system that responds to the member match operation."
* type = #system
* insert CommonActor

RuleSet: CommonActor
* status = #active
* experimental = false
* date = "2026-01-28"