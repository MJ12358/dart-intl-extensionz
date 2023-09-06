// ignore_for_file: avoid_print

import 'package:dart_intl_extensionz/dart_intl_extensionz.dart';
import 'package:test/test.dart';

void main() {
  test('toDateTime', () {
    const String value1 = '01/01/2020';
    final DateTime? result1 = value1.toDateTime(pattern: 'MM/dd/yyyy');
    const String value2 = '08:30 AM';
    final DateTime? result2 = value2.toDateTime(pattern: 'HH:mm a');

    final DateTime value3 = DateTime(2020);
    print(value3);

    expect(result1, DateTime(2020));
    expect(result2, DateTime(1970, 1, 1, 8, 30));
    expect(value3.toString().toDateTime(), value3);
  });

  test('toDuration', () {
    const String value1 = '08:30 AM';
    final Duration? result1 = value1.toDuration(pattern: 'HH:mm a');
    const String value2 = '05:25:30';
    final Duration? result2 = value2.toDuration(pattern: 'HH:mm:ss');

    const Duration value3 = Duration(hours: 1, minutes: 15, seconds: 30);

    expect(result1, const Duration(hours: 8, minutes: 30));
    expect(result2, const Duration(hours: 5, minutes: 25, seconds: 30));
    expect(value3.toString().toDuration(), value3);
  });
}
