part of dart_intl_extensionz;

extension DurationExtension on Duration? {
  /// Get localized duration.
  ///
  /// This uses `Intl.DateFormat`.
  String format({
    String? locale,
    String pattern = 'HH:mm:ss',
    bool isUtc = true,
  }) {
    if (this == null) {
      return '';
    }

    final DateFormat dateFormat = DateFormat(
      pattern,
      locale ?? Platform.localeName,
    );

    final DateTime dateTime = DateTime.fromMillisecondsSinceEpoch(
      this!.inMilliseconds,
      isUtc: isUtc,
    );

    return dateFormat.format(dateTime);
  }
}
