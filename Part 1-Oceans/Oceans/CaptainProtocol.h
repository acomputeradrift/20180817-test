//
//  CaptainProtocol.h
//  Oceans
//
//  Created by Daniel Mathews on 2015-01-26.
//  Copyright (c) 2015 com.lighthouse-labs. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Submarine;

@protocol CaptainProtocol <NSObject>

@required

- (BOOL) shouldCatchFish:(Submarine*)submarine;


@end
