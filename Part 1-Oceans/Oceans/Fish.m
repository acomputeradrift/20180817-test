//
//  Fish.m
//  Oceans
//
//  Created by Daniel Mathews on 2015-01-02.
//  Copyright (c) 2015 com.lighthouse-labs. All rights reserved.
//

#import "Fish.h"

@implementation Fish

- (instancetype)initWithWeightAndValue:(int) weight value:(int) value
{
    self = [super init];
    if (self) {
        self.value = value;
        self.weight = weight;
    }
    return self;
}

@end