import 'dart:async';
import 'package:flutter/services.dart';

class FlutterToastPlugin {
  static const MethodChannel _channel = MethodChannel('flutter_toast_plugin');

  static Future<void> showToast(String message) async {
    await _channel.invokeMethod('showToast', {'message': message});
  }
}
