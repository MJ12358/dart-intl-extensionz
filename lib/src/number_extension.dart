part of dart_intl_extensionz;

extension NumberExtension on num? {
  /// Get localized currency.
  ///
  /// This uses `Intl.NumberFormat.compactSimpleCurrency`.
  ///
  /// A number format for compact currency representations,
  /// e.g. "$1.2M" instead of "$1,200,000",
  /// and which will automatically determine a
  /// currency symbol based on the currency name or the locale.
  String toCompactCurrency({
    String? locale,
    String? name,
    int? decimalDigits,
  }) {
    if (this == null) {
      return '';
    }

    final NumberFormat numberFormat = NumberFormat.compactSimpleCurrency(
      locale: locale ?? Platform.localeName,
      name: name,
      decimalDigits: decimalDigits,
    );

    return numberFormat.format(this);
  }

  /// Get localized currency.
  ///
  /// This uses `Intl.NumberFormat.simpleCurrency`.
  ///
  /// Creates a [NumberFormat] for currencies,
  /// using the simple symbol for the currency
  /// if one is available (e.g. $, €),
  /// so it should only be used if the
  /// short currency symbol will be unambiguous.
  String toSimpleCurrency({
    String? locale,
    String? name,
    int? decimalDigits,
  }) {
    if (this == null) {
      return '';
    }

    final NumberFormat numberFormat = NumberFormat.simpleCurrency(
      locale: locale ?? Platform.localeName,
      name: name,
      decimalDigits: decimalDigits,
    );

    return numberFormat.format(this);
  }

  /// Get localized compact number.
  ///
  /// This uses `Intl.NumberFormat.compact`.
  ///
  /// A number format for compact representations,
  /// e.g. "1.2M" instead of "1,200,000".
  String toCompact({
    String? locale,
    bool explicitSign = false,
  }) {
    if (this == null) {
      return '';
    }

    final NumberFormat numberFormat = NumberFormat.compact(
      locale: locale ?? Platform.localeName,
      explicitSign: explicitSign,
    );

    return numberFormat.format(this);
  }

  /// Get localized number.
  ///
  /// This uses `Intl.NumberFormat.decimalPatternDigits`.
  ///
  /// Create a number format that prints as DECIMAL_PATTERN.
  String toDecimalPattern({
    String? locale,
    int? decimalDigits,
  }) {
    if (this == null) {
      return '';
    }

    final NumberFormat numberFormat = NumberFormat.decimalPatternDigits(
      locale: locale ?? Platform.localeName,
      decimalDigits: decimalDigits,
    );

    return numberFormat.format(this);
  }

  /// Get localized percent.
  ///
  /// This uses `Intl.NumberFormat.decimalPercentPattern`.
  ///
  /// Create a number format that prints as PERCENT_PATTERN.
  String toPercentPattern({
    String? locale,
    int? decimalDigits,
  }) {
    if (this == null) {
      return '';
    }

    final NumberFormat numberFormat = NumberFormat.decimalPercentPattern(
      locale: locale ?? Platform.localeName,
      decimalDigits: decimalDigits,
    );

    return numberFormat.format(this);
  }

  /// Get localized scientific pattern.
  ///
  /// This uses `Intl.NumberFormat.scientificPattern`.
  ///
  /// Create a number format that prints as SCIENTIFIC_PATTERN.
  String toScientificPattern({
    String? locale,
  }) {
    if (this == null) {
      return '';
    }

    final NumberFormat numberFormat = NumberFormat.scientificPattern(
      locale ?? Platform.localeName,
    );

    return numberFormat.format(this);
  }
}
