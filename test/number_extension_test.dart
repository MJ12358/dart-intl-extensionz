import 'package:dart_intl_extensionz/dart_intl_extensionz.dart';
import 'package:test/test.dart';

void main() {
  group('toCompactCurrency', () {
    const num value = 1200000;
    test('en_US', () {
      final String result = value.toCompactCurrency(locale: 'en_US');
      expect(result, r'$1.2M');
    });

    test('en_GB', () {
      final String result = value.toCompactCurrency(locale: 'en_GB');
      expect(result, '£1.2M');
    });

    test('de_DE', () {
      final String result = value.toCompactCurrency(locale: 'de_DE');
      expect(result, '1,2 Mio. €');
    });
  });

  group('toSimpleCurrency', () {
    const num value = 75.5;
    test('en_US', () {
      final String result = value.toSimpleCurrency(locale: 'en_US');
      expect(result, r'$75.50');
    });

    test('en_GB', () {
      final String result = value.toSimpleCurrency(locale: 'en_GB');
      expect(result, '£75.50');
    });

    test('de_DE', () {
      final String result = value.toSimpleCurrency(locale: 'de_DE');
      expect(result, '75,50 €');
    });
  });

  test('toCompact', () {
    const num value = 1200000;
    final String result = value.toCompact();
    expect(result, '1.2M');
  });

  test('toDecimalPattern', () {
    const num value = 12.123;
    final String result = value.toDecimalPattern();
    expect(result, '12.123');
  });

  test('toPercentPattern', () {
    const num value = 0.75;
    final String result = value.toPercentPattern();
    expect(result, '75%');
  });

  test('toScientificPattern', () {
    const num value = 1200000;
    final String result = value.toScientificPattern();
    expect(result, '1E6');
  });
}
