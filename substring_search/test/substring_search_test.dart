import 'package:substring_search/substring_search.dart';
import 'package:test/test.dart';

void main() {
  group('Manual Substring Search Tests', () {
    test('containsSubstringManual - match exists', () {
      expect(containsSubstringManual("banana", "ana"), isTrue);
    });

    test('containsSubstringManual - no match', () {
      expect(containsSubstringManual("banana", "apple"), isFalse);
    });

    test('firstOccurrenceManual', () {
      expect(firstOccurrenceManual("banana", "ana"), equals(1));
      expect(firstOccurrenceManual("banana", "apple"), equals(-1));
    });

    test('allOccurrencesManual', () {
      expect(allOccurrencesManual("banana", "ana"), equals([1, 3]));
      expect(allOccurrencesManual("banana", "apple"), equals([]));
    });
  });

  group('Built-in Substring Search Tests', () {
    test('containsSubstringBuiltIn - match exists', () {
      expect(containsSubstringBuiltIn("banana", "ana"), isTrue);
    });

    test('containsSubstringBuiltIn - no match', () {
      expect(containsSubstringBuiltIn("banana", "apple"), isFalse);
    });

    test('firstOccurrenceBuiltIn', () {
      expect(firstOccurrenceBuiltIn("banana", "ana"), equals(1));
      expect(firstOccurrenceBuiltIn("banana", "apple"), equals(-1));
    });

    test('allOccurrencesBuiltIn', () {
      expect(allOccurrencesBuiltIn("banana", "ana"), equals([1, 3]));
      expect(allOccurrencesBuiltIn("banana", "apple"), equals([]));
    });
  });
}
