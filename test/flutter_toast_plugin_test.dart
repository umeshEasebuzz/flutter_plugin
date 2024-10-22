import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_toast_plugin/flutter_toast_plugin.dart';
import 'package:flutter_toast_plugin/flutter_toast_plugin_platform_interface.dart';
import 'package:flutter_toast_plugin/flutter_toast_plugin_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterToastPluginPlatform
    with MockPlatformInterfaceMixin
    implements FlutterToastPluginPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterToastPluginPlatform initialPlatform = FlutterToastPluginPlatform.instance;

  test('$MethodChannelFlutterToastPlugin is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterToastPlugin>());
  });

  test('getPlatformVersion', () async {
    FlutterToastPlugin flutterToastPlugin = FlutterToastPlugin();
    MockFlutterToastPluginPlatform fakePlatform = MockFlutterToastPluginPlatform();
    FlutterToastPluginPlatform.instance = fakePlatform;

    expect(await flutterToastPlugin.getPlatformVersion(), '42');
  });
}
