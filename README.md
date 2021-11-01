<!-- 
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages). 

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages). 
-->

# bep53-range 

Parse and compose Magnet URI extension (BEP53) ranges.

## Usage

### parse

Parse Magnet URI extension (BEP53) range and return all included values.

```dart
import 'package:bep53/bep53.dart';

final range = ['1-3', '6', '11-13']

const values = Bep53.parse(range)
print(values) // [1, 2, 3, 6, 11, 12, 13]

```

### compose

Compose Magnet URI extension (BEP53) range from all included values.

```dart
import 'package:bep53/bep53.dart';

const values = [1, 2, 3, 6, 11, 12, 13]

const range = Bep53.compose(values)
print(range) // ['1-3', '6', '11-13']
```
