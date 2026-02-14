# Refactor Agent - Examples

## Example 1: Simplifying Logic (Guard Clauses)
**Before**:
```javascript
function processOrder(order) {
  if (order) {
    if (order.status === 'paid') {
      shipOrder(order);
    }
  }
}
```
**After**:
```javascript
function processOrder(order) {
  if (order?.status !== 'paid') return;
  shipOrder(order);
}
```

## Example 2: Destructuring & Spread
**Before**:
```javascript
const id = user.id;
const name = user.name;
const age = 20;
const payload = { id: id, name: name, age: age };
```
**After**:
```javascript
const { id, name } = user;
const payload = { id, name, age: 20 };
```

## Example 3: Consolidating Utilities
Instead of defining `formatDate` in 5 different agents, move it to `utils/date.js` and have all agents import it.
