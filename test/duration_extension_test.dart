// ignore_for_file: avoid_print

import 'package:dart_intl_extensionz/dart_intl_extensionz.dart';
import 'package:test/test.dart';

void main() {
  test('format', () {
    const Duration value1 = Duration(hours: 1, minutes: 12, seconds: 55);
    final String result1 = value1.format();
    final String result2 = value1.format(pattern: 'h:m:s');
    final String result3 = value1.format(pattern: 'HH.mm.ss');

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
}
