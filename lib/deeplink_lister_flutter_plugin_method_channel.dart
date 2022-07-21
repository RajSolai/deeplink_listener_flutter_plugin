import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'deeplink_lister_flutter_plugin_platform_interface.dart';

/// An implementation of [DeeplinkListerFlutterPluginPlatform] that uses method channels.
class MethodChannelDeeplinkListerFlutterPlugin extends DeeplinkListerFlutterPluginPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('deeplink_lister_flutter_plugin');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
