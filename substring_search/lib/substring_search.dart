void main() {
  String text = "banana";
  String pattern = "ana";

  print("Manual");
  print("Contains: ${containsSubstringManual(text, pattern)}");
  print("First occurrence index: ${firstOccurrenceManual(text, pattern)}");
  print("All occurrences: ${allOccurrencesManual(text, pattern)}");

  print("\n[Built-in]");
  print("Contains: ${containsSubstringBuiltIn(text, pattern)}");
  print("First occurrence index: ${firstOccurrenceBuiltIn(text, pattern)}");
  print("All occurrences: ${allOccurrencesBuiltIn(text, pattern)}");
}

// Manual implementations

bool containsSubstringManual(String text, String pattern) {
  return firstOccurrenceManual(text, pattern) != -1;
}

int firstOccurrenceManual(String text, String pattern) {
  int n = text.length;
  int m = pattern.length;

  for (int i = 0; i <= n - m; i++) {
    int j = 0;
    while (j < m && text[i + j] == pattern[j]) {
      j++;
    }
    if (j == m) return i;
  }
  return -1;
}

List<int> allOccurrencesManual(String text, String pattern) {
  List<int> result = [];
  int n = text.length;
  int m = pattern.length;

  for (int i = 0; i <= n - m; i++) {
    int j = 0;
    while (j < m && text[i + j] == pattern[j]) {
      j++;
    }
    if (j == m) result.add(i);
  }
  return result;
}

// Built-in implementations

bool containsSubstringBuiltIn(String text, String pattern) {
  return text.contains(pattern);
}

int firstOccurrenceBuiltIn(String text, String pattern) {
  return text.indexOf(pattern);
}

List<int> allOccurrencesBuiltIn(String text, String pattern) {
  List<int> result = [];
  int index = text.indexOf(pattern);
  while (index != -1) {
    result.add(index);
    index = text.indexOf(pattern, index + 1);
  }
  return result;
}
