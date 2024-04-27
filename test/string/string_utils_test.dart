import 'package:essential_utils/string/string_utils.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('StringUtils Tests', () {
    test('capitalizeWords should capitalize each word in a string', () {
      expect(StringUtils.capitalizeWords('hello world'), equals('Hello World'));
      expect(StringUtils.capitalizeWords('flutter development'),
          equals('Flutter Development'));
      expect(StringUtils.capitalizeWords(''), equals('')); // Test empty string
      expect(StringUtils.capitalizeWords('a'),
          equals('A')); // Test single character
    });

    test('isPalindrome should correctly identify palindromes', () {
      expect(StringUtils.isPalindrome('racecar'), isTrue);
      expect(StringUtils.isPalindrome('Racecar'), isTrue); // Case insensitivity
      expect(StringUtils.isPalindrome('12321'), isTrue);
      expect(StringUtils.isPalindrome('hello'), isFalse);
      expect(StringUtils.isPalindrome('A man a plan a canal Panama'),
          isTrue); // Ignore spaces and cases
      expect(StringUtils.isPalindrome(''),
          isTrue); // Empty string considered a palindrome
    });
  });
}
