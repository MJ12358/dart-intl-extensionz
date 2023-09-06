// ignore_for_file: avoid_print

import 'package:dart_intl_extensionz/dart_intl_extensionz.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:test/test.dart';

void main() {
  initializeDateFormatting();
  test('format', () {
    final DateTime value = DateTime(2020, 6, 29);
    final String result1 = value.format();
    final String result2 = value.format(locale: 'en_GB');
    final String result3 = value.format(locale: 'de_DE');

    expect(result1, '6/29/2020');
    expect(result2, '29/06/2020');
    expect(result3, '29.6.2020');
  });
}
