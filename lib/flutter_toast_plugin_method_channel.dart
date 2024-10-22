import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_toast_plugin_platform_interface.dart';

/// An implementation of [FlutterToastPluginPlatform] that uses method channels.
class MethodChannelFlutterToastPlugin extends FlutterToastPluginPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_toast_plugin');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
