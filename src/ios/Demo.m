//
//  CDVDemo.m
//  Demo
//
//  Created by Akshay Shinde on 4/3/16.
//  Copyright © 2016 Dents. All rights reserved.
//

#import <Foundation/Foundation.h>


#import "CDVDemo.h"
#import <Cordova/CDV.h>

@implementation Demo : NSObject 

- (void)demo:(CDVInvokedUrlCommand*)command
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

@end
