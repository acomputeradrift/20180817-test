//
//  Submarine.h
//  Oceans
//
//  Created by Daniel Mathews on 2015-01-02.
//  Copyright (c) 2015 com.lighthouse-labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CaptainProtocol.h"

@class Ocean;
@class Fish;

@interface Submarine : NSObject

@property (assign) int depth;
@property (assign) int tile;
@property (nonatomic,strong) NSMutableArray* cargo;
@property (nonatomic) id <CaptainProtocol> delegate;

- (void) dive;
- (void) surface;
- (void) descend;
- (void) ascend;
- (void) forward;
- (void) backward;

-(Fish*) goFishInOcean:(Ocean*) ocean depth:(int) depth tile:(int) tile;
-(void)addtoCargo:(Ocean*) ocean depth:(int) depth tile:(int) tile;

@end