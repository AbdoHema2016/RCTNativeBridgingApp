//
//  RNSwipeableManager.m
//  NativeBridgingApp
//
//  Created by Abdelrahman-Arw on 2/19/20.
//  Copyright © 2020 Facebook. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "RNSwipeableManager.h"
#import "RNSwipeable.h"

@implementation RNSwipeableManager

RCT_EXPORT_MODULE()

- (UIView *)view {
  return [[RNSwipeable alloc] init];
}

@end
