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

RuleSet: mapeq(sourceCode, sourceDisplay, targetCode, targetDisplay)
* insert map({sourceCode}, [[{sourceDisplay}]], #equivalent, {targetCode}, [[{targetDisplay}]])

RuleSet: mapnarrow(sourceCode, sourceDisplay, targetCode, targetDisplay, comment)
* insert map({sourceCode}, [[{sourceDisplay}]], #narrower, {targetCode}, [[{targetDisplay}]])
* element[=].target.comment = "{comment}"

RuleSet: maprelated(sourceCode, sourceDisplay, targetCode, targetDisplay, comment)
* insert map({sourceCode}, [[{sourceDisplay}]], #relatedto, {targetCode}, [[{targetDisplay}]])
* element[=].target.comment = "{comment}"

RuleSet: mapwide(sourceCode, sourceDisplay, targetCode, targetDisplay)
* insert map({sourceCode}, [[{sourceDisplay}]], #wider, {targetCode}, [[{targetDisplay}]])

RuleSet: nomap(sourceCode, sourceDisplay)
* element[+]
  * code = {sourceCode}
  * display = "{sourceDisplay}"
  * target.equivalence = #unmatched

RuleSet: AdditionalBinding(key, purpose, canonical)
* ^binding.extension[$additional-binding][+].extension[key].valueId = {key}
* ^binding.extension[$additional-binding][=].extension[purpose].valueCode = {purpose}
* ^binding.extension[$additional-binding][=].extension[valueSet].valueCanonical = {canonical}
