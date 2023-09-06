part of dart_intl_extensionz;

extension StringExtension on String? {
  /// Attempt to parse `this` to a [DateTime]
  /// using the anticipated [pattern].
  ///
  /// The default [pattern] matches the
  /// format produced when stringifying a [DateTime].
  DateTime? toDateTime({
    String? pattern = 'YYYY-MM-DDTHH:mm:ss.SSSSSSS',
    String? locale,
    bool isUtc = false,
  }) {
    if (this == null) {
      return null;
    }

    try {
      return DateFormat(
        pattern,
        locale ?? Platform.localeName,
      ).parseLoose(this!, isUtc);
    } on FormatException catch (_) {
      return DateTime.tryParse(this!);
    }
  }

  /// Attempt to parse `this` to a [Duration]
  /// using the anticipated [pattern].
  ///
  /// The default [pattern] matches the
  /// format produced when stringifying a [Duration].
  Duration? toDuration({
    String pattern = 'HH:mm:ss.SSSSSS',
    String? locale,
  }) {
    if (this == null) {
      return null;
    }

    final DateTime? dateTime = toDateTime(
      pattern: pattern,
      locale: locale,
      isUtc: true,
    );

    if (dateTime == null) {
      return null;
    }

    return Duration(
      hours: dateTime.hour,
      minutes: dateTime.minute,
      seconds: dateTime.second,
      milliseconds: dateTime.millisecond,
      microseconds: dateTime.microsecond,
    );
  }
}
