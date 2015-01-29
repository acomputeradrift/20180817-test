//
//  Submarine.m
//  Oceans
//
//  Created by Daniel Mathews on 2015-01-02.
//  Copyright (c) 2015 com.lighthouse-labs. All rights reserved.
//

#import "Submarine.h"
#import "Ocean.h"
#import "Fish.h"

@implementation Submarine

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.depth = kSURFACE;
        self.tile = 0;
        self.cargo = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void) dive{    
    if (self.depth == kSURFACE){
        self.depth++;
    }
}

- (void) surface{
    if (self.depth == kSURFACE+1){
        self.depth--;
    }
}

- (void) descend{
    if (self.depth > kSURFACE && self.depth < kMAX_DEPTH){
        self.depth++;
    }
}

- (void) ascend{
    if (self.depth > kSURFACE+1){
        self.depth--;
    }
}

- (void) forward{
    if (self.tile < kMAX_TILE){
        self.tile++;
    }
}

- (void) backward{
    if (self.tile > kSURFACE){
        self.tile--;
    }
}

-(Fish*)goFishInOcean:(Ocean*) ocean depth:(int) depth tile:(int) tile{
    
    if(self.delegate){
        if([self.delegate shouldCatchFish:self]){
            // Normal Captain
            return [ocean fishAtDepth:depth tile:tile];
        }
    }
        return nil;
}

-(void)addtoCargo:(Ocean*) ocean depth:(int) depth tile:(int) tile{
    
    Fish *f = [ocean fishAtDepth:depth tile:tile];
    
    if(f){
        [self.cargo addObject:f];
    }
}


@end
