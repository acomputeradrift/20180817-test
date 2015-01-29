//
//  Fish.h
//  Oceans
//
//  Created by Daniel Mathews on 2015-01-02.
//  Copyright (c) 2015 com.lighthouse-labs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fish : NSObject

@property (assign) int weight;
@property (assign) int value;

- (instancetype)initWithWeightAndValue:(int) weight value:(int) value;

@end
