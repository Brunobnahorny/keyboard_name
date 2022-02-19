# keyboard_name

The plugin is to resolve a well know decimal input issue with samsung keypads
https://github.com/flutter/flutter/issues/61175

It's based on [RobertHeim](https://github.com/flutter/flutter/issues/61175#issuecomment-862185853) workaround

## Getting Started

# Install

Add this to your package's pubspec.yaml file and execute flutter pub get:

```
dependencies:
    keyboard_name: ^0.0.1
```

# Usage

The following example compares the returned string of the default keyboard input and compares to know if is a 'Samsung'

```dart
Future<void> _checkIfSamsungKeyboard() async {
    bool isSamsungKeyboard = false;

    try {
      String? keyboardVendor = await KeyboardName.getVendorName;

      if (keyboardVendor != null && keyboardVendor.isNotEmpty)
          isSamsungKeyboard.value = keyboardVendor.toLowerCase().contains('samsung');
    } catch (_) {
      // fallback uses text to ensure it is working on all platforms
      isSamsungKeyboard.value = true;
    }
    
    return isSamsungKeyboard;
}
```

