#import "FlutterRadioGroupPlugin.h"
#if __has_include(<flutter_radio_group/flutter_radio_group-Swift.h>)
#import <flutter_radio_group/flutter_radio_group-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "flutter_radio_group-Swift.h"
#endif

@implementation FlutterRadioGroupPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterRadioGroupPlugin registerWithRegistrar:registrar];
}
@end
