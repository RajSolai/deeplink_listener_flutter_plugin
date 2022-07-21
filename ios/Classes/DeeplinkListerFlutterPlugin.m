#import "DeeplinkListerFlutterPlugin.h"
#if __has_include(<deeplink_lister_flutter_plugin/deeplink_lister_flutter_plugin-Swift.h>)
#import <deeplink_lister_flutter_plugin/deeplink_lister_flutter_plugin-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "deeplink_lister_flutter_plugin-Swift.h"
#endif

@implementation DeeplinkListerFlutterPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftDeeplinkListerFlutterPlugin registerWithRegistrar:registrar];
}
@end
