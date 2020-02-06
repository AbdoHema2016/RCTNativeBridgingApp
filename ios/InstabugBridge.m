//
//  InstabugBridge.m
//  NativeBridgingApp
//
//  Created by Abdelrahman-Arw on 2/6/20.
//  Copyright © 2020 Facebook. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <React/RCTBridgeModule.h>

@interface RCT_EXTERN_MODULE(InstabugBridge, NSObject)

RCT_EXTERN_METHOD(getUserData)

@end

@interface RCT_EXTERN_MODULE(Counter, NSObject)
RCT_EXTERN_METHOD(constantsToExport)
RCT_EXTERN_METHOD(increment)
RCT_EXTERN_METHOD(reColour: (nonnull NSNumber *)red green:(nonnull NSNumber *)green blue:(nonnull NSNumber *)blue )

@end
