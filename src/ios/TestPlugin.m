//
//  TestPlugin.m
//  noter
//
//  Created by Anaí Arroyo on 8/11/14.
//
//

#import "TestPlugin.h"
#import <Cordova/CDV.h>


@implementation TestPlugin

- (void)addEntry:(CDVInvokedUrlCommand*)command
{
    CDVPluginResult* pluginResult = nil;
//    NSString* echo = [command.arguments objectAtIndex:0];
    NSString* echo = @"Mensaje retornado por el iOS plugin";
    
    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:echo];
    
//    if (echo != nil && [echo length] > 0) {
//        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:echo];
//    } else {
//        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
//    }
    
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end
