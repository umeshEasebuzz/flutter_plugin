import Flutter
import UIKit
import Toast // Import the Toast library

public class FlutterToastPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "flutter_toast_plugin", binaryMessenger: registrar.messenger())
    let instance = FlutterToastPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    if call.method == "showToast" {
      if let args = call.arguments as? [String: Any],
         let message = args["message"] as? String {

        // Display toast message using the Toast pod
        if let rootViewController = UIApplication.shared.keyWindow?.rootViewController {
          rootViewController.view.makeToast(message)
        }

        result(true)
      } else {
        result(FlutterError(code: "ERROR", message: "Message argument not found", details: nil))
      }
    } else {
      result(FlutterMethodNotImplemented)
    }
  }
}
