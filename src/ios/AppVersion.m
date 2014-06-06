#import "AppVersion.h"
@implementation AppVersion

@synthesize callbackID;

-(void)getVersionNumber:(NSMutableArray*)arguments withDict:(NSMutableDictionary*)options
{
    self.callbackID = [arguments pop];
    NSString * appVersionString = [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleShortVersionString"];
    CDVPluginResult* pluginResult = nil;
    
    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:appVersionString];
    
    [self.commandDelegate sendPluginResult:pluginResult callbackId:self.callbackID];
}
@end
