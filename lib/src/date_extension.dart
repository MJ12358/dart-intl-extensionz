part of dart_intl_extensionz;

extension DateExtension on DateTime? {
  /// Get localized date.
  ///
  /// This uses `Intl.DateFormat`.
  ///
  /// Creates a new DateFormat, using the format specified by [pattern].
  String format({
    String pattern = 'yMd',
    String? locale,
  }) {
    if (this == null) {
      return '';
    }

    final DateFormat dateFormat = DateFormat(
      pattern,
      locale ?? Platform.localeName,
    );

    return dateFormat.format(this!);
  }
}
