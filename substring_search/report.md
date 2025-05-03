### 🔹 Phase 1 – Manual Implementation

- ✅ No Dart built-ins like `.contains()`, `.indexOf()`, or `.split()`
- ✅ Uses nested loops for character-by-character comparison
- ✅ Provides full control over the logic

### 🔹 Phase 2 – Built-in Implementation

- ✅ Uses Dart built-in methods like `.contains()`, `.indexOf()`, and `.split()`
- ✅ More concise and idiomatic
- ✅ Best for quick solutions in production code

---

## 📊 Algorithm Analysis

| Feature              | Manual                 | Built-in                 |
| -------------------- | ---------------------- | ------------------------ |
| **Time Complexity**  | O(n × m)               | O(n + m) avg (optimized) |
| **Space Complexity** | O(1)                   | O(1)                     |
| **Readability**      | Medium                 | High                     |
| **Performance**      | Slower on large inputs | Fast & efficient         |
| **Flexibility**      | High (custom logic)    | Low (limited to API)     |

> Where `n` = length of text, `m` = length of pattern.
