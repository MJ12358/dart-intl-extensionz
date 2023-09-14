part of dart_intl_extensionz;

// TODO: date time only represents 24 hours
// this means any [Duration] over 24 hours
// is represented as an overflow of 24 hours.
extension DurationExtension on Duration? {
  /// Get localized duration.
  ///
  /// This uses `Intl.DateFormat`.
  String format({
    String? locale,
    String pattern = 'HH:mm:ss:SS',
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
