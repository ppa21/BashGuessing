
* **Mutant 1 KILLED:**
  * `negated conditional → KILLED` Changed Line 147 `if (!ordinaryChecks.isEmpty() || !commentChecks.isEmpty())` to `if (ordinaryChecks.isEmpty() || !commentChecks.isEmpty())` 
  * This mutant affects the result only when both ordinaryChecks and commentChecks are empty, because there is a relational OR in the condition check. When both checks are empty, we do not expect tree walks or messages added, but the mutant will added messages.
* **Mutant 2 KILLED:**
  * `negated conditional → KILLED` Changed Line 147 `if (!ordinaryChecks.isEmpty() || !commentChecks.isEmpty())` to `if (!ordinaryChecks.isEmpty() || commentChecks.isEmpty())` 
  * The mutant is a duplicate of **Mutant 1**
* **Mutant 3 KILLED:**
  * `removed conditional - replaced equality check with false → KILLED` Changed Line 147 `if (!ordinaryChecks.isEmpty() || !commentChecks.isEmpty())` to `if (false || !commentChecks.isEmpty())` 
  * This mutant affects the result when ordinaryChecks is non-empty and commentChecks is empty. The program expects a tree walk with ordinaryChecks but gets none.
* **Mutant 4 KILLED:**
  * `removed conditional - replaced equality check with false → KILLED` Changed Line 147 `if (!ordinaryChecks.isEmpty() || !commentChecks.isEmpty())` to `if (!ordinaryChecks.isEmpty() || false)` 
  * This mutant affects the result when ordinaryChecks is empty and commentChecks is non-empty. The program expects a tree walk with commentChecks but gets none.
* **Mutant 5 KILLED:**
  * `removed conditional - replaced equality check with true → KILLED` Changed Line 147 `if (!ordinaryChecks.isEmpty() || !commentChecks.isEmpty())` to `if (true || !commentChecks.isEmpty())` 
  * This mutant affects the result when both ordinaryChecks and commentChecks are empty. The program a bypass in tree walks and adding messages but will have message added
* **Mutant 6 KILLED:**
  * `removed conditional - replaced equality check with true → KILLED` Changed Line 147 `if (!ordinaryChecks.isEmpty() || !commentChecks.isEmpty())` to `if (!ordinaryChecks.isEmpty() || true)` 
  * The mutant is a duplicate of **Mutant 5**
* **Mutant 7 KILLED:**
  * `negated conditional → KILLED` Changed Line 150 `if (!ordinaryChecks.isEmpty())` to `if (ordinaryChecks.isEmpty())`
  * The mutant would perform tree walk on empty ordinaryChecks which will affect the result. 
* **Mutant 8 SURVIVED:**
  * `removed conditional - replaced equality check with false → SURVIVED` Changed Line 150 `if (!ordinaryChecks.isEmpty())` to `if (false)`
  *  The original condition performs a tree walk on non-empty ordinaryChecks, the mutant prevents the tree walk on non-empty ordinaryChecks by always bypass the if statement with false. We can create a testcase `testBehaviourWithNonEmptyOrdinaryChecks()` and assert appropriate resulted message to reflect a tree walk with ordinaryChecks to kill this mutant.
* **Mutant 9 KILLED:**
  * `removed conditional - replaced equality check with true → KILLED` Changed Line 150 `if (!ordinaryChecks.isEmpty())` to `if (true)`
  * The mutant is a duplicate of **Mutant 7**
* **Mutant 10 KILLED:**
  * `removed call to com/puppycrawl/tools/checkstyle/TreeWalker::walk → KILLED` Removed Line 151 `walk(rootAST, contents, AstState.ORDINARY);` 
  * The mutant disables a tree walk with ordinaryChecks which would affect the result
* **Mutant 11 KILLED:**
  * `negated conditional → KILLED` Changed Line 153 `if (!commentChecks.isEmpty())` to `if (commentChecks.isEmpty())`
  * The mutant would perform tree walk on empty commentChecks which will affect the result. 
* **Mutant 12 SURVIVED:** 
  * `removed conditional - replaced equality check with false → SURVIVED` Changed Line 153 `if (!commentChecks.isEmpty())` to `if (false)`
  * The original condition performs a tree walk on non-empty commentChecks, the mutant prevents the tree walk on non-empty commentChecks by always bypass the if statement with false. We can create a testcase `testBehaviourWithNonEmptyCommentChecks()` and assert appropriate resulted message to reflect a tree walk with commentChecks to kill this mutant.
* **Mutant 13 KILLED:**
  * `removed conditional - replaced equality check with true → Killed` Changed Line 153 `if (!commentChecks.isEmpty())` to `if (true)`
  *  The mutant is a duplicate of **Mutant 11**
* **Mutant 14 KILLED:**
  * `removed call to com/puppycrawl/tools/checkstyle/TreeWalker::walk → KILLED` Removed Line 155 `walk(astWithComments, contents, AstState.WITH_COMMENTS);` 
  * The mutant disables a tree walk with commentChecks which would affect the result
* **Mutant 15 KILLED:**
  * `negated conditional → KILLED` Changed Line 157 `if (filters.isEmpty()) ` to `if (!filters.isEmpty())`
  * The message is added only when fitler is non-empty, this affects the result because filterMessages will be ignored.
* **Mutant 16 SURVIVED:**
  * `removed conditional - replaced equality check with false → SURVIVED` Changed Line 157 `if (filters.isEmpty())` to `if (false) `
  * The original condition adds non-filtered messages when there is no filter, the mutant prevents bypass the if statement with false. The function will always try to retreive and add filter messages.  We can create a testcase `testBehaviourWithEmptyFilter()` and assert appropriate resulted messages that indicate no filter has been processed to kill this mutant.
* **Mutant 17 KILLED:**
  * `removed conditional - replaced equality check with true → KILLED` Changed Line 157 `if (filters.isEmpty())` to `if (true) `
  * The mutant is a duplicate of **Mutant 15**
* **Mutant 18 KILLED:**
  * `removed call to com/puppycrawl/tools/checkstyle/TreeWalker::addMessages → KILLED` Removed Line 158 `addMessages(messages);`
  * The mutants affects the messages being added by removing the function
* **Mutant 19 KILLED:**
  * `removed call to com/puppycrawl/tools/checkstyle/TreeWalker::addMessages → KILLED` Removed Line 163 `addMessages(filteredMessages);`
  * The mutants affects the filtered messages being added by removing the function
* **Mutant 20 KILLED:**
  * `removed call to java/util/SortedSet::clear → KILLED` Removed Line 165 `messages.clear();`
  * The mutant prevents message clearing which would affect consequent methods that works with messages
