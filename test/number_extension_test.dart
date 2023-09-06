// ignore_for_file: avoid_print

import 'package:dart_intl_extensionz/dart_intl_extensionz.dart';
import 'package:test/test.dart';

void main() {
  test('toCompactCurrency', () {
    const num value = 1200000;
    final String result = value.toCompactCurrency();
    print(result);
  });

  test('toSimpleCurrency', () {
    const num value = 75.5;
    final String result = value.toSimpleCurrency();
    print(result);
  });

  test('toCompact', () {
    const num value = 1200000;
    final String result = value.toCompact();
    print(result);
  });

  test('toDecimalPattern', () {
    const num value = 12.123;
    final String result = value.toDecimalPattern();
    print(result);
  });

  test('toPercentPattern', () {
    const num value = 0.75;
    final String result = value.toPercentPattern();
    print(result);
  });

  test('toScientificPattern', () {
    const num value = 1200000;
    final String result = value.toScientificPattern();
    print(result);
  });
}
