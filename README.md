# Dart Intl Extensionz

![pub package](https://img.shields.io/pub/v/dart_intl_extensionz)

A set of extensions for the [Intl](https://pub.dev/packages/intl) package.

## Usage

```dart
import 'package:dart_intl_extensionz/dart_intl_extensionz.dart';
```

```dart
DateTime value = DateTime.now();
String result = value.format(pattern: 'yMd');
```

```dart
Duration value = Duration(minutes: 5, seconds: 30);
String result = value.format(pattern: 'h:m:s');
```

```dart
double value = 78.5;
String result = value.toSimpleCurrency();
```

```dart
double value = 24.8;
String result = value.toDecimalPattern();
```

```dart
double value = 0.75;
String result = value.toPercentPattern();
```

The [generated documentation](https://pub.dev/documentation/dart_intl_extensionz/latest/dart_intl_extensionz/dart_intl_extensionz-library.html) will give you a great overview of all that is available.
