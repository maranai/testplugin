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

- (void)TestPlugin:(CDVInvokedUrlCommand*)command
{
    CDVPluginResult* pluginResult = nil;
    NSString* echo = @"Mensaje retornado por el iOS plugin";
    
    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:echo];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end
