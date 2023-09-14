import 'package:dart_intl_extensionz/dart_intl_extensionz.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:test/test.dart';

import 'common.dart';

void main() {
  initializeDateFormatting();
  group('format', () {
    final DateTime value = DateTime(2020, 6, 29);
    test(en_US, () {
      final String result = value.format(locale: en_US);
      expect(result, '6/29/2020');
    });

    test(en_GB, () {
      final String result = value.format(locale: en_GB);
      expect(result, '29/06/2020');
    });

    test(de_DE, () {
      final String result = value.format(locale: de_DE);
      expect(result, '29.6.2020');
    });
  });
}
