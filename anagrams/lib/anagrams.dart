// Manual implementation
bool areAnagramsManual(String s1, String s2) {
  if (s1.length != s2.length) return false;

  Map<String, int> charCount = {};

  for (int i = 0; i < s1.length; i++) {
    charCount[s1[i]] = (charCount[s1[i]] ?? 0) + 1;
    charCount[s2[i]] = (charCount[s2[i]] ?? 0) - 1;
  }

  return charCount.values.every((count) => count == 0);
}

// Built-in implementation
bool areAnagramsBuiltIn(String s1, String s2) {
  if (s1.length != s2.length) return false;

  List<String> l1 = s1.split('');
  List<String> l2 = s2.split('');

  l1.sort((a, b) => a.compareTo(b));
  l2.sort((a, b) => a.compareTo(b));

  return l1.join() == l2.join();
}

void main() {
  String s1 = 'racecar';
  String s2 = 'carrace';

  print('[Manual] Are Anagrams: ${areAnagramsManual(s1, s2)}');
  print('[Built-in] Are Anagrams: ${areAnagramsBuiltIn(s1, s2)}');
}
