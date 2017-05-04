#import <Foundation/Foundation.h>
#import <Cordova/CDVPlugin.h>
#import <Cordova/CDVPluginResult.h>
#import <QuickLook/QuickLook.h>

@interface AppVersion : CDVPlugin {
   NSString* callbackID;
}

@property(nonatomic,copy) NSString* callbackID;

// Instance Method
-(void) getVersionNumber:(CDVInvokedUrlCommand*)command;
@end
