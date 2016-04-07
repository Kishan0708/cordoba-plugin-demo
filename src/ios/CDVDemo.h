//
//  CDVDemo.h
//  Demo
//
//  Created by Akshay Shinde on 4/3/16.
//  Copyright © 2016 Dents. All rights reserved.
//

#ifndef CDVDemo_h
#define CDVDemo_h


#import <Cordova/CDV.h>

@interface Demo: CDVPlugin

- (id)init 
{
    self = [super init];
    if (self) 
    {
        // superclass successfully initialized, further 
        // initialization happens here ...
    }
    return self;
}

- (void)demo:(CDVInvokedUrlCommand*)command;

@end


#endif /* CDVDemo_h */
