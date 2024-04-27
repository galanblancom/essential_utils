# Essential Utils

## Overview
`Essential Utils` is a robust suite of utilities designed to enhance the development experience in Flutter projects. With `DateUtils`, `StringUtils`, and `ColorUtils`, this package provides developers with the tools needed to handle dates, strings, and colors more effectively and efficiently. Reduce boilerplate, ensure UI consistency, and improve accessibility with minimal effort.

## Features
- **DateUtils**: Functions to format dates and calculate relative times.
- **StringUtils**: Enhanced string manipulation capabilities including capitalization and palindrome checks.
- **ColorUtils**: Tools to generate Material color swatches and determine optimal text colors based on background luminance.

## Getting Started

### Installation
To add `FlutterToolkit` to your Flutter project, include it in your `pubspec.yaml` file:

```yaml
dependencies:
  flutter_toolkit: ^1.0.0
```

Then run the following command to install the package:
```flutter pub get```

### Importing
To use the utilities in your project, simply import the package:
```dart
import 'package:flutter_toolkit/flutter_toolkit.dart';
```

## Usage
### DateUtils
```dart
DateTime now = DateTime.now();
String formattedDate = DateUtils.formatAsUsDate(now);
String timeAgo = DateUtils.timeAgoSinceDate(now.subtract(Duration(days: 1)));
```

### StringUtils
```dart
String capitalized = StringUtils.capitalizeWords("hello world");
bool isPalindrome = StringUtils.isPalindrome("racecar");
```

### ColorUtils
```dart
Color primaryColor = Color(0xFF6A1B9A);
MaterialColor materialColor = ColorUtils.createMaterialColor(primaryColor);
Color fontColor = ColorUtils.getBestFontColor(primaryColor);
```

## License
`Essential Utils` is available under the MIT license. For more information, see the LICENSE file in the repository.