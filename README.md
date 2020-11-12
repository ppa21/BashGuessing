
* **Mutant 1 KILLED:**
  * `negated conditional → KILLED` Changed Line 629 `if (foundMatch)` to `if (!foundMatch)` 
  * This mutant would attempt to increment match count for an illegal pattern. 
* **Mutant 2 KILLED:**
  * `removed conditional - replaced equality check with false → KILLED` Changed Line 629 `if (foundMatch)` to `if (false)` 
  * This mutant affects the result when foundMatch is true. The program gets a false operator instead and attempts to match illegal patterns. 
* **Mutant 3 KILLED:**
  * `removed conditional - replaced equality check with true → KILLED` Changed Line 629 `if (foundMatch)` to `if (true)` 
  * This mutant affects the result when foundMatch is true. The program gets a true operator and attempts to match patters not knowing if the pattern is valid or not. 
* **Mutant 4 KILLED:**
  * `removed call to com/puppycrawl/tools/checkstyle/checks/regexp/RegexpCheck::findMatch → KILLED` Removed Line 645 `findMatch();` 
  * This mutant prevents `findMatch()` from making a recursive call, possibly affecting the overall result. 
* **Mutant 5 KILLED:**
  * `Replaced integer addition with subtraction → KILLED` Changed Line 637 `matchCount++;` to `matchCount--;` 
  * This mutant affects the overall match count, reporting the incorrect match count value. 
* **Mutant 6 KILLED:**
  * `changed conditional boundary → KILLED` As a part of the `if statement`, Changed Line 639 `matchCount - 1 > duplicateLimit)` to have either one of `<, >, >=` 
  * This mutant may alter the exection flow as error count may not be incremented. 
* **Mutant 7 KILLED:**
  * `Replaced integer addition with subtraction → KILLED` Changed Line 640 `errorCount++;` to `errorCount--;` 
  * This mutant affects the overall error count, reporting the incorrect error count value. 
* **Mutant 8 KILLED:**
  * `removed call to com/puppycrawl/tools/checkstyle/checks/regexp/RegexpCheck::logMessage → KILLED` Removed Line 641 `logMessage(startLine);` 
  * Thie mutant prevents `startLine` from being logged, possibly affecting the print output in the case of existence of illegal patterns or duplicates. 
* **Mutant 9 KILLED:**
  * `negated conditional → KILLED` Changed Line 644 `if (canContinueValidation(ignore))` to `if (!canContinueValidation(ignore))` 
  * This mutant attempts to make a resursive call even without a validation to continue. 















  
* **Mutant 10 SURVIVED:**
  * `changed conditional boundary → SURVIVED` Changed Line 193 `if (toTest.getColumnNo() < first.getColumnNo())` to have either one of `<=, >, >=` instead 
  * This mutant allows the wrong node of an AST to be assigned as the first node in an AST.

 










