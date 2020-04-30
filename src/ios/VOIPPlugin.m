/********* VOIPPlugin.m Cordova Plugin Implementation *******/

#import <Cordova/CDV.h>

@interface VOIPPlugin : CDVPlugin {
  // Member variables go here.
}

@property (nonatomic, strong) NSString* callbackId;

- (void)coolMethod:(CDVInvokedUrlCommand*)command;
@end

@implementation VOIPPlugin

- (void)coolMethod:(CDVInvokedUrlCommand*)command
{
    CDVPluginResult* pluginResult = nil;
    NSString* echo = [command.arguments objectAtIndex:0];

    if (echo != nil && [echo length] > 0) {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:echo];
    } else {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
    }

    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)newTestMethod:(CDVInvokedUrlCommand*)command
{
    CDVPluginResult* pluginResult = nil;
    NSString* echo = [command.arguments objectAtIndex:0];

    if (echo != nil && [echo length] > 0) {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:echo];
    } else {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
    }

    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)listenForTimer:(CDVInvokedUrlCommand*)command
{
    self.callbackId = command.callbackId;
    NSTimer* timer;
    timer = [NSTimer scheduledTimerWithTimeInterval:5.0 target:self selector:@selector(timerMethod) userInfo:nil repeats:YES];
}

-(void)timerMethod
{
    NSLog(@"Timer Called");
    CDVPluginResult* pluginResult = nil;
    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:@"timer message"];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:self.callbackId];
}

@end
