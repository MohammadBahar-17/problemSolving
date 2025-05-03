import 'package:anagrams/anagrams.dart';
import 'package:test/test.dart';

void main() {
  test('Manual and Built-in should agree on anagrams', () {
    expect(areAnagramsManual('listen', 'silent'), isTrue);
    expect(areAnagramsBuiltIn('listen', 'silent'), isTrue);
    expect(areAnagramsManual('apple', 'papel'), isTrue);
    expect(areAnagramsBuiltIn('hello', 'bello'), isFalse);
  });
}
