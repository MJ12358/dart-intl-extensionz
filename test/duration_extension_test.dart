import 'package:dart_intl_extensionz/dart_intl_extensionz.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:test/test.dart';

import 'common.dart';

void main() {
  initializeDateFormatting();
  group('format', () {
    const Duration value = Duration(
      hours: 1,
      minutes: 12,
      seconds: 55,
      milliseconds: 250,
    );
    // const Duration value2 = Duration(
    //   hours: 56,
    //   minutes: 12,
    //   seconds: 55,
    //   milliseconds: 250,
    // );
    test(en_US, () {
      final String result1 = value.format(locale: en_US);
      final String result2 = value.format(pattern: 'h:m:s', locale: en_US);
      final String result3 = value.format(pattern: 'HH.mm.ss', locale: en_US);
      final String result4 =
          value.format(pattern: "m 'm' ss 's' SS 'ms'", locale: en_US);

      expect(result1, '01:12:55:250');
      expect(result2, '1:12:55');
      expect(result3, '01.12.55');
      expect(result4, '12 m 55 s 250 ms');

      // TODO: date time only represents 24 hours
      // final String result4 = value2.format(locale: en_US);
      // final String result5 = value2.format(pattern: 'h:m:s', locale: en_US);
      // final String result6 = value2.format(pattern: 'HH.mm.ss', locale: en_US);

      // expect(result4, '56:12:55:250');
      // expect(result5, '56:12:55');
      // expect(result6, '56.12.55');
    });

    test(en_GB, () {
      final String result1 = value.format(locale: en_GB);
      final String result2 = value.format(pattern: 'h:m:s', locale: en_GB);
      final String result3 = value.format(pattern: 'HH.mm.ss', locale: en_GB);

      expect(result1, '01:12:55:250');
      expect(result2, '1:12:55');
      expect(result3, '01.12.55');
    });

    test(de_DE, () {
      final String result1 = value.format(locale: de_DE);
      final String result2 = value.format(pattern: 'h:m:s', locale: de_DE);
      final String result3 = value.format(pattern: 'HH.mm.ss', locale: de_DE);

      expect(result1, '01:12:55:250');
      expect(result2, '1:12:55');
      expect(result3, '01.12.55');
    });
  });
}
