//
//  QBAnimationItem.m
//  QBAnimationSequenceTest
//
//  Created by questbeat on 2012/09/29.
//  Copyright (c) 2012年 questbeat. All rights reserved.
//

#import "QBAnimationItem.h"

@implementation QBAnimationItem

@synthesize duration = _duration;
@synthesize delay = _delay;
@synthesize options = _options;
@synthesize animations = _animations;

- (id)init
{
    self = [super init];
    
    if(self) {
        self.duration = 0;
        self.delay = 0;
        self.options = UIViewAnimationOptionCurveLinear;
        self.animations = nil;
    }
    
    return self;
}

- (id)initWithDuration:(CGFloat)duration delay:(CGFloat)delay options:(UIViewAnimationOptions)options animations:(QBAnimationBlock)animations
{
    self = [self init];
    
    if(self) {
        self.duration = duration;
        self.delay = delay;
        self.options = options;
        self.animations = animations;
    }
    
    return self;
}

@end