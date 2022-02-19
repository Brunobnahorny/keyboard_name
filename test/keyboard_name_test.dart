import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:keyboard_name/keyboard_name.dart';

void main() {
  const MethodChannel channel = MethodChannel('keyboard_name');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getKeyboardVendor', () async {
    expect(await KeyboardName.getVendorName, '42');
  });
}
