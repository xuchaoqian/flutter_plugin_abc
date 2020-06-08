import 'dart:async';
import 'dart:ffi';
import 'dart:io'; // For Platform.isX
import 'package:flutter/services.dart';

final DynamicLibrary nativeAddLib = Platform.isAndroid
    ? DynamicLibrary.open("libflutter_plugin_abc.so")
    : DynamicLibrary.process();

final int Function(int x, int y) nativeAdd =
  nativeAddLib
    .lookup<NativeFunction<Int32 Function(Int32, Int32)>>("native_add")
    .asFunction();

class FlutterPluginAbc {
  static const MethodChannel _channel =
      const MethodChannel('flutter_plugin_abc');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
