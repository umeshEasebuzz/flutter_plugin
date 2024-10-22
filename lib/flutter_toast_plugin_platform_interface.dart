import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_toast_plugin_method_channel.dart';

abstract class FlutterToastPluginPlatform extends PlatformInterface {
  /// Constructs a FlutterToastPluginPlatform.
  FlutterToastPluginPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterToastPluginPlatform _instance = MethodChannelFlutterToastPlugin();

  /// The default instance of [FlutterToastPluginPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterToastPlugin].
  static FlutterToastPluginPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterToastPluginPlatform] when
  /// they register themselves.
  static set instance(FlutterToastPluginPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
