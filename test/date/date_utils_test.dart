import 'package:essential_utils/date/date_utils.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('DateUtils Tests', () {
    test('formatAsUsDate should format date correctly', () {
      DateTime testDate = DateTime(2023, 12, 25);
      String formattedDate = DateUtils.formatAsUsDate(testDate);
      expect(formattedDate, equals('12/25/2023'));
    });

    test('timeAgoSinceDate should return correct time ago string', () {
      DateTime now = DateTime.now();
      DateTime fiveMinutesAgo = now.subtract(const Duration(minutes: 5));
      expect(
          DateUtils.timeAgoSinceDate(fiveMinutesAgo), equals('5 minutes ago'));

      DateTime fiveDaysAgo = now.subtract(const Duration(days: 5));
      expect(DateUtils.timeAgoSinceDate(fiveDaysAgo), equals('5 days ago'));
    });
  });
}
