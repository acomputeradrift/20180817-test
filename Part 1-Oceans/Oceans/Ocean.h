//
//  Ocean.h
//  Oceans
//
//  Created by Daniel Mathews on 2015-01-02.
//  Copyright (c) 2015 com.lighthouse-labs. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Fish;

@interface Ocean : NSObject

extern const int kMAX_DEPTH;
extern const int kMAX_TILE;
extern const int kSURFACE;

@property (nonatomic,strong) NSArray *board;

@end
