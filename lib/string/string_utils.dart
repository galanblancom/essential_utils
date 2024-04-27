class StringUtils {
  /// Capitalizes the first letter of each word in a [String] and returns the result.
  ///
  /// Example:
  /// ```dart
  /// String str = "hello world";
  /// String capitalized = StringUtils.capitalizeWords(str);
  /// print(capitalized); // Hello World
  /// ```
  static String capitalizeWords(String text) {
    return text.isNotEmpty
        ? text
            .split(' ')
            .map((word) => word[0].toUpperCase() + word.substring(1))
            .join(' ')
        : text;
  }

  /// Checks if the [String] is a palindrome and returns a [bool] value.
  ///
  /// Example:
  /// ```dart
  /// String str = "hello world";
  /// bool isPalindrome = StringUtils.isPalindrome(str);
  /// print(isPalidrome); // false
  /// ```
  static bool isPalindrome(String text) {
    String cleaned = text.replaceAll(RegExp(r'\s+'), '').toLowerCase();
    return cleaned == cleaned.split('').reversed.join('');
  }
}
