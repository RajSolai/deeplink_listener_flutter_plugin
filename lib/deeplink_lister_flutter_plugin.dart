
import 'deeplink_lister_flutter_plugin_platform_interface.dart';

class DeeplinkListerFlutterPlugin {
  Future<String?> getPlatformVersion() {
    return DeeplinkListerFlutterPluginPlatform.instance.getPlatformVersion();
  }
}
