RuleSet: parameter(name, use, min, max, type, documentation) 
* name = {name}
* use = {use}
* min = {min}
* max = {max}
* type = {type}
* documentation = {documentation}

RuleSet: parameterComplex(name, use, min, max, documentation) 
* name = {name}
* use = {use}
* min = {min}
* max = {max}
* documentation = {documentation}

RuleSet: map(sourceCode, sourceDisplay, equivalence, targetCode, targetDisplay)
* element[+]
  * code = {sourceCode}
  * display = "{sourceDisplay}"
  * target
    * code = {targetCode}
    * display = "{targetDisplay}"
    * equivalence = {equivalence}

RuleSet: nomap(sourceCode, sourceDisplay)
* element[+]
  * code = {sourceCode}
  * display = "{sourceDisplay}"
  * target.equivalence = #unmatched

RuleSet: AdditionalBinding(purpose, canonical)
* ^binding.extension[$additional-binding][+].extension[purpose].valueCode = {purpose}
* ^binding.extension[$additional-binding][=].extension[valueSet].valueCanonical = {canonical}
