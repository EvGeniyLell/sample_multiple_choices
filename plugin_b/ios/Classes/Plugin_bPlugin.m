#import "Plugin_bPlugin.h"
#if __has_include(<plugin_b/plugin_b-Swift.h>)
#import <plugin_b/plugin_b-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "plugin_b-Swift.h"
#endif

@implementation Plugin_bPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftPlugin_bPlugin registerWithRegistrar:registrar];
}
@end
