import 'package:flutter/material.dart';
import 'package:flutter_toast_plugin/flutter_toast_plugin.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Toast Plugin'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              FlutterToastPlugin.showToast("Hello from iOS Toast!");
            },
            child: Text('Show Toast'),
          ),
        ),
      ),
    );
  }
}
