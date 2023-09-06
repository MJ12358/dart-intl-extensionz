import 'package:dart_intl_extensionz/dart_intl_extensionz.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:test/test.dart';

void main() {
  initializeDateFormatting();
  group('toDateTime', () {
    const String value1 = '01/01/2020';
    const String value2 = '08:30 AM';
    final DateTime value3 = DateTime(2020);
    test('en_US', () {
      final DateTime? result1 = value1.toDateTime(
        pattern: 'MM/dd/yyyy',
        locale: 'en_US',
      );
      final DateTime? result2 = value2.toDateTime(
        pattern: 'hh:mm a',
        locale: 'en_US',
      );
      expect(result1, DateTime(2020));
      expect(result2, DateTime(1970, 1, 1, 8, 30));
      expect(value3.toString().toDateTime(), value3);
    });

    test('en_GB', () {
      final DateTime? result1 = value1.toDateTime(
        pattern: 'dd/MM/yyyy',
        locale: 'en_GB',
      );
      final DateTime? result2 = value2.toDateTime(
        pattern: 'hh:mm a',
        locale: 'en_GB',
      );
      expect(result1, DateTime(2020));
      expect(result2, DateTime(1970, 1, 1, 8, 30));
      expect(value3.toString().toDateTime(), value3);
    });

    test('de_DE', () {
      final DateTime? result1 = value1.toDateTime(
        pattern: 'dd/MM/yyyy',
        locale: 'de_DE',
      );
      final DateTime? result2 = value2.toDateTime(
        pattern: 'hh:mm a',
        locale: 'de_DE',
      );
      expect(result1, DateTime(2020));
      expect(result2, DateTime(1970, 1, 1, 8, 30));
      expect(value3.toString().toDateTime(), value3);
    });
  });

  group('toDuration', () {
    const String value1 = '08:30 AM';
    const String value2 = '05:25:30';
    const Duration value3 = Duration(hours: 1, minutes: 15, seconds: 30);
    test('en_US', () {
      final Duration? result1 = value1.toDuration(
        pattern: 'hh:mm a',
        locale: 'en_US',
      );
      final Duration? result2 = value2.toDuration(
        pattern: 'hh:mm:ss',
        locale: 'en_US',
      );
      expect(result1, const Duration(hours: 8, minutes: 30));
      expect(result2, const Duration(hours: 5, minutes: 25, seconds: 30));
      expect(value3.toString().toDuration(), value3);
    });

    test('en_GB', () {
      final Duration? result1 = value1.toDuration(
        pattern: 'hh:mm a',
        locale: 'en_GB',
      );
      final Duration? result2 = value2.toDuration(
        pattern: 'hh:mm:ss',
        locale: 'en_GB',
      );
      expect(result1, const Duration(hours: 8, minutes: 30));
      expect(result2, const Duration(hours: 5, minutes: 25, seconds: 30));
      expect(value3.toString().toDuration(), value3);
    });

    test('de_DE', () {
      final Duration? result1 = value1.toDuration(
        pattern: 'hh:mm a',
        locale: 'de_DE',
      );
      final Duration? result2 = value2.toDuration(
        pattern: 'hh:mm:ss',
        locale: 'de_DE',
      );
      expect(result1, const Duration(hours: 8, minutes: 30));
      expect(result2, const Duration(hours: 5, minutes: 25, seconds: 30));
      expect(value3.toString().toDuration(), value3);
    });
  });
}
