import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_toast_plugin/flutter_toast_plugin_method_channel.dart';

void main() {
  MethodChannelFlutterToastPlugin platform = MethodChannelFlutterToastPlugin();
  const MethodChannel channel = MethodChannel('flutter_toast_plugin');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
