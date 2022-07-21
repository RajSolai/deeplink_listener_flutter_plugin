import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'deeplink_lister_flutter_plugin_method_channel.dart';

abstract class DeeplinkListerFlutterPluginPlatform extends PlatformInterface {
  /// Constructs a DeeplinkListerFlutterPluginPlatform.
  DeeplinkListerFlutterPluginPlatform() : super(token: _token);

  static final Object _token = Object();

  static DeeplinkListerFlutterPluginPlatform _instance = MethodChannelDeeplinkListerFlutterPlugin();

  /// The default instance of [DeeplinkListerFlutterPluginPlatform] to use.
  ///
  /// Defaults to [MethodChannelDeeplinkListerFlutterPlugin].
  static DeeplinkListerFlutterPluginPlatform get instance => _instance;
  
  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [DeeplinkListerFlutterPluginPlatform] when
  /// they register themselves.
  static set instance(DeeplinkListerFlutterPluginPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
