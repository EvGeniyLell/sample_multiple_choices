#import "Plugin_aPlugin.h"
#if __has_include(<plugin_a/plugin_a-Swift.h>)
#import <plugin_a/plugin_a-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "plugin_a-Swift.h"
#endif

@implementation Plugin_aPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftPlugin_aPlugin registerWithRegistrar:registrar];
}
@end
