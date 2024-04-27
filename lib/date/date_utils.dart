class DateUtils {
  /// Formats [dateTime] as a US locale string (MM/dd/yyyy).
  /// 
  /// Example:
  /// ```dart
  /// DateTime date = DateTime(2023, 1, 31);
  /// String formatted = DateUtils.formatAsUsDate(date);
  /// print(formatted); // 01/31/2023
  /// ```
  static String formatAsUsDate(DateTime dateTime) {
    return "${dateTime.month.toString().padLeft(2, '0')}/${dateTime.day.toString().padLeft(2, '0')}/${dateTime.year}";
  }

  /// Returns a human-readable 'time ago' string for [dateTime].
  /// 
  /// Example:
  /// ```dart
  /// DateTime pastDate = DateTime.now().subtract(Duration(days: 1));
  /// String timeAgo = DateUtils.timeAgoSinceDate(pastDate);
  /// print(timeAgo); // 1 day ago
  /// ```
  static String timeAgoSinceDate(DateTime dateTime) {
    final duration = DateTime.now().difference(dateTime);
    if (duration.inDays > 365) {
      return '${(duration.inDays / 365).floor()} years ago';
    } else if (duration.inDays > 30) {
      return '${(duration.inDays / 30).floor()} months ago';
    } else if (duration.inDays > 0) {
      return '${duration.inDays} days ago';
    } else if (duration.inHours > 0) {
      return '${duration.inHours} hours ago';
    } else if (duration.inMinutes > 0) {
      return '${duration.inMinutes} minutes ago';
    } else {
      return 'Just now';
    }
  }
}
