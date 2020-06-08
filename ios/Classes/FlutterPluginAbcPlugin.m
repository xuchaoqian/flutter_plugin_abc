#import "FlutterPluginAbcPlugin.h"
#if __has_include(<flutter_plugin_abc/flutter_plugin_abc-Swift.h>)
#import <flutter_plugin_abc/flutter_plugin_abc-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "flutter_plugin_abc-Swift.h"
#endif

@implementation FlutterPluginAbcPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterPluginAbcPlugin registerWithRegistrar:registrar];
}
@end
