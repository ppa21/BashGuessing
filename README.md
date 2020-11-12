
* **Mutant 1 KILLED:**
  * `negated conditional → KILLED` Changed Line 147 `if (!ordinaryChecks.isEmpty() || !commentChecks.isEmpty())` to `if (ordinaryChecks.isEmpty() || !commentChecks.isEmpty())` 
* **Mutant 2 KILLED:**
  * `negated conditional → KILLED` Changed Line 147 `if (!ordinaryChecks.isEmpty() || !commentChecks.isEmpty())` to `if (!ordinaryChecks.isEmpty() || commentChecks.isEmpty())` 
* **Mutant 3 KILLED:**
  * `removed conditional - replaced equality check with false → KILLED` Changed Line 147 `if (!ordinaryChecks.isEmpty() || !commentChecks.isEmpty())` to `if (false || !commentChecks.isEmpty())` 
* **Mutant 4 KILLED:**
  * `removed conditional - replaced equality check with false → KILLED` Changed Line 147 `if (!ordinaryChecks.isEmpty() || !commentChecks.isEmpty())` to `if (!ordinaryChecks.isEmpty() || false)` 
* **Mutant 5 KILLED:**
  * `removed conditional - replaced equality check with true → KILLED` Changed Line 147 `if (!ordinaryChecks.isEmpty() || !commentChecks.isEmpty())` to `if (true || !commentChecks.isEmpty())` 
* **Mutant 6 KILLED:**
  * `removed conditional - replaced equality check with true → KILLED` Changed Line 147 `if (!ordinaryChecks.isEmpty() || !commentChecks.isEmpty())` to `if (!ordinaryChecks.isEmpty() || true)` 
* **Mutant 7 KILLED:**
  * `negated conditional → KILLED` Changed Line 150 `if (!ordinaryChecks.isEmpty())` to `if (ordinaryChecks.isEmpty())`
* **Mutant 8 SURVIVED:**
  * `removed conditional - replaced equality check with false → SURVIVED` Changed Line 150 `if (!ordinaryChecks.isEmpty())` to `if (false)`
  *  
* **Mutant 9 KILLED:**
  * `removed conditional - replaced equality check with true → KILLED` Changed Line 150 `if (!ordinaryChecks.isEmpty())` to `if (true)`
* **Mutant 10 KILLED:**
  * `removed call to com/puppycrawl/tools/checkstyle/TreeWalker::walk → KILLED` Removed Line 151 `walk(rootAST, contents, AstState.ORDINARY);` 
* **Mutant 11 KILLED:**
  * `negated conditional → KILLED` Changed Line 153 `if (!commentChecks.isEmpty())` to `if (commentChecks.isEmpty())`
* **Mutant 12 SURVIVED:**
  * `removed conditional - replaced equality check with false → SURVIVED` Changed Line 153 `if (!commentChecks.isEmpty())` to `if (false)`
  * 
* **Mutant 13 KILLED:**
  * `removed conditional - replaced equality check with true → Killed` Changed Line 153 `if (!commentChecks.isEmpty())` to `if (true)`
* **Mutant 14 KILLED:**
  * `removed call to com/puppycrawl/tools/checkstyle/TreeWalker::walk → KILLED` Removed Line 155 `walk(astWithComments, contents, AstState.WITH_COMMENTS);` 
* **Mutant 15 KILLED:**
  * `negated conditional → KILLED` Changed Line 157 `if (filters.isEmpty()) ` to `if (!filters.isEmpty())`
* **Mutant 16 SURVIVED:**
  * `removed conditional - replaced equality check with false → SURVIVED` Changed Line 157 `if (filters.isEmpty())` to `if (false) `
  *
* **Mutant 17 KILLED:**
  * `removed conditional - replaced equality check with true → KILLED` Changed Line 157 `if (filters.isEmpty())` to `if (true) `
* **Mutant 18 KILLED:**
  * `removed call to com/puppycrawl/tools/checkstyle/TreeWalker::addMessages → KILLED` Removed Line 158 `addMessages(messages);`
* **Mutant 19 KILLED:**
  * `removed call to com/puppycrawl/tools/checkstyle/TreeWalker::addMessages → KILLED` Removed Line 163 `addMessages(filteredMessages);`
* **Mutant 20 KILLED:**
  * `removed call to java/util/SortedSet::clear → KILLED` Removed Line 165 `messages.clear();`
