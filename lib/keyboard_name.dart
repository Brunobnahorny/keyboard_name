import 'dart:async';

import 'package:flutter/services.dart';

class KeyboardName {
  static const MethodChannel _channel = MethodChannel('keyboard_name');

  static Future<String?> get getVendorName async {
    final String? version = await _channel.invokeMethod('getKeyboardVendor');
    return version;
  }
}
