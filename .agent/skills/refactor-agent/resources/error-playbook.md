# Refactor Agent - Error Playbook

## Issue: Breaking Changes during Refactor
- **Symptom**: Tests fail after a cleanup.
- **Action**: Reverse the change immediately. Use a more surgical approach (incremental refactoring). Check if a "hidden" side effect was accidentally removed.

## Issue: Regressions in Types
- **Symptom**: TypeScript errors in previously working files.
- **Action**: Ensure type definitions (interfaces/types) are updated to match the new simplified structure. Avoid using `any` as a shortcut during refactoring.

## Issue: Performance Regression
- **Symptom**: Code is "cleaner" but slower.
- **Action**: Profile the code. Sometimes "elegant" abstractions like heavy use of `.map().filter().reduce()` are slower than a simple `for` loop for massive datasets. Balance beauty with performance.
