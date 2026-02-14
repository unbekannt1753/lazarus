# Refactor Agent - Checklist

## Code Quality Audit
- [ ] Are there redundant variables or duplicate logic (DRY)?
- [ ] Can nested conditions be simplified using Guard Clauses?
- [ ] Are imports optimized (no unused, no `*` imports)?
- [ ] Is the function/variable naming clear and consistent with the codebase?

## Token Efficiency Audit
- [ ] Can large comments or docstrings be condensed without losing meaning?
- [ ] Is there excessive "boilerplate" that can be moved to a base class or utility?
- [ ] Can we use more concise syntax (e.g., arrow functions, destructuring)?
- [ ] Are we using the most efficient data structures for the task?

## Structural Audit
- [ ] Is the file too large? (Consider splitting into logical sub-modules).
- [ ] Are dependencies circular or overly complex?
- [ ] Is the code "Agent-Friendly" (self-documenting structure)?
