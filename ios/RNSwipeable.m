//
//  RNSwipeable.m
//  NativeBridgingApp
//
//  Created by Abdelrahman-Arw on 2/19/20.
//  Copyright © 2020 Facebook. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RNSwipeable.h"

@interface RNSwipeable()
@property (nonatomic, assign) CGPoint initialCenter;
@property (nonatomic, assign) CGFloat dragOffsetForTransparency;
@end

@implementation RNSwipeable

- (instancetype)init {
  if ((self = [super init])) {
    self.dragOffsetForTransparency = 0.8 * [UIScreen mainScreen].bounds.size.width;
    UIPanGestureRecognizer *pan = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(handlePan:)];
    [pan setMinimumNumberOfTouches:1];
    [pan setMaximumNumberOfTouches:1];
    [self addGestureRecognizer:pan];
  }
  return self;
}

- (void)handlePan:(UIPanGestureRecognizer *)pan {
  if (pan.state == UIGestureRecognizerStateBegan) {
    self.initialCenter = self.center;
  }
  CGPoint translation = [pan translationInView:self];
  self.center = CGPointMake(self.initialCenter.x + translation.x, self.center.y);
  self.alpha = 1 - fabs(translation.x) / self.dragOffsetForTransparency;
  if (pan.state == UIGestureRecognizerStateEnded) {
    self.center = self.initialCenter;
    self.alpha = 1;
  }
}

@end
