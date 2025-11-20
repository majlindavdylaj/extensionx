# ExtensionX

A Flutter package that provides a collection of handy **extensions**  to make your life easier and your code cleaner.

---
## Installation

Add ExtensionX to your Flutter project by including it in your `pubspec.yaml`:

```yaml
dependencies:
  extensionx: latest_version
```

Then run:

```bash
flutter pub get
```

---

## Features

### **DateTime**
- `xIsNull` – Check if a date is null.
- `xIsBetween` – Check if a DateTime is between two dates.
- `xIsSameDay` – Check if two dates are the same day.
- `xIsToday` – Check if a date is today.
- `xIsYesterday` – Check if a date is yesterday.

### **Double**
- `xIsNull` – Check if double is null.
- `xIsNullOrZero` – Check if double is null or zero.
- `xRoundToDecimals` – Round a double to a specific number of decimal places.

### **Int**
- `xIsNull` – Check if int is null.
- `xIsNullOrZero` – Check if int is null or zero.
- `xIsEven` – Check if number is even.
- `xIsOdd` – Check if number is odd.

### **String**
- `xIsNull` – Check if string is null.
- `xIsNullOrBlank` – Check if string is null or empty.
- `xCapitalize` – Capitalize the first letter.
- `xToTitleCase` – Capitalize each word in a string.
- `xIsEmail` – Simple email validation.

### **List**
- `xIsNull` – Check if list is null.
- `xIsNullOrEmpty` – Check if list is null or empty.
- `xRemoveDuplicates` – Remove duplicate items from a list.

### **BuildContext**
- `xIsNull` – Check if BuildContext is null.
- `xMediaQuery` – Access MediaQuery data quickly.
- `xSize` – Access Size data quickly.
- `xWidth` – Get width screen size quickly.
- `xHeight` – Get height screen size quickly.
- `xViewInsetsBottom` – Bottom inset (keyboard, etc.).
- `xIsMobile` – Check screen type is mobile.
- `xIsTablet` – Check screen type is tablet.
- `xIsDesktop` – Check screen type is desktop.
- `xTheme` – Access Theme data quickly.
- `xTextTheme` – Access TextTheme data quickly.
- `xColorScheme` – Access ColorScheme data quickly.

---
## Example

```dart
import 'package:extensionx/extensionx.dart';

// DateTime
final today = DateTime.now();
final isBetween = today.xIsBetween(DateTime(2024, 1, 1), DateTime(2024, 12, 31));

// Double
double value = 3.14159;
print(value.xRoundToDecimals(2)); // 3.14

// Int
int number = 5;
print(number.xIsEven); // false

// String
String text = "hello world";
print(text.xToTitleCase()); // "Hello World"

// List
List<int> numbers = [1, 2, 2, 3];
print(numbers.xRemoveDuplicates); // [1, 2, 3]

// BuildContext
bool isMobile = context.xIsMobile;
double width = context.xWidth;
TextTheme textTheme = context.xTextTheme;

```

## Contributing

Contributions, issues, and feature requests are welcome!
Feel free to open a PR or an issue if you have suggestions or find bugs.

---