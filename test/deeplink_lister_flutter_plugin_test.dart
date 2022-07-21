import 'package:flutter_test/flutter_test.dart';
import 'package:deeplink_lister_flutter_plugin/deeplink_lister_flutter_plugin.dart';
import 'package:deeplink_lister_flutter_plugin/deeplink_lister_flutter_plugin_platform_interface.dart';
import 'package:deeplink_lister_flutter_plugin/deeplink_lister_flutter_plugin_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockDeeplinkListerFlutterPluginPlatform 
    with MockPlatformInterfaceMixin
    implements DeeplinkListerFlutterPluginPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final DeeplinkListerFlutterPluginPlatform initialPlatform = DeeplinkListerFlutterPluginPlatform.instance;

  test('$MethodChannelDeeplinkListerFlutterPlugin is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelDeeplinkListerFlutterPlugin>());
  });

  test('getPlatformVersion', () async {
    DeeplinkListerFlutterPlugin deeplinkListerFlutterPlugin = DeeplinkListerFlutterPlugin();
    MockDeeplinkListerFlutterPluginPlatform fakePlatform = MockDeeplinkListerFlutterPluginPlatform();
    DeeplinkListerFlutterPluginPlatform.instance = fakePlatform;
  
    expect(await deeplinkListerFlutterPlugin.getPlatformVersion(), '42');
  });
}
