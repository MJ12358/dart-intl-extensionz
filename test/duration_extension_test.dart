import 'package:dart_intl_extensionz/dart_intl_extensionz.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:test/test.dart';

void main() {
  initializeDateFormatting();
  group('format', () {
    const Duration value = Duration(hours: 1, minutes: 12, seconds: 55);
    test('en_US', () {
      final String result1 = value.format(locale: 'en_US');
      final String result2 = value.format(pattern: 'h:m:s', locale: 'en_US');
      final String result3 = value.format(pattern: 'HH.mm.ss', locale: 'en_US');

      expect(result1, '01:12:55');
      expect(result2, '1:12:55');
      expect(result3, '01.12.55');

      // TODO: date time only represents 24 hours max
      // const Duration value2 = Duration(hours: 56, minutes: 1, seconds: 5);
      // final String result4 = value2.format();
      // final String result5 = value2.format(pattern: 'h:m:s');
      // final String result6 = value2.format(pattern: 'HH.mm.ss');

      // expect(result4, '56:01:05');
      // expect(result5, '56:1:5');
      // expect(result6, '56.01.05');
    });

    test('en_GB', () {
      final String result1 = value.format(locale: 'en_GB');
      final String result2 = value.format(pattern: 'h:m:s', locale: 'en_GB');
      final String result3 = value.format(pattern: 'HH.mm.ss', locale: 'en_GB');

      expect(result1, '01:12:55');
      expect(result2, '1:12:55');
      expect(result3, '01.12.55');
    });

    test('de_DE', () {
      final String result1 = value.format(locale: 'de_DE');
      final String result2 = value.format(pattern: 'h:m:s', locale: 'de_DE');
      final String result3 = value.format(pattern: 'HH.mm.ss', locale: 'de_DE');

      expect(result1, '01:12:55');
      expect(result2, '1:12:55');
      expect(result3, '01.12.55');
    });
  });
}
