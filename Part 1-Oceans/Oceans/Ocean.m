//
//  Ocean.m
//  Oceans
//
//  Created by Daniel Mathews on 2015-01-02.
//  Copyright (c) 2015 com.lighthouse-labs. All rights reserved.
//

#import "Ocean.h"

@implementation Ocean

const int kMAX_DEPTH = 4;
const int kMAX_TILE = 9;
const int kSURFACE = 0;

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        // The board below represents the ocean. It's an array of arrays of strings (a 2 dimensional Array)
        // Each tile is either empty (~) or has fish: SALMON (S) or TUNA (T)

        self.board = [NSArray arrayWithObjects:
                                                /* => => Forward direction => => */
                                                /*0 1 2 3 4 5 6 7 8 9   # Tile Number */
                [NSArray arrayWithObjects:@"~",@"~",@"~",@"S",@"~",@"~",@"~",@"T",@"S",@"T", nil], //Depth1
                [NSArray arrayWithObjects:@"T",@"S",@"~",@"~",@"S",@"~",@"~",@"S",@"~",@"~", nil], //Depth2
                [NSArray arrayWithObjects:@"S",@"~",@"~",@"T",@"~",@"S",@"~",@"T",@"~",@"S", nil], //Depth3
                [NSArray arrayWithObjects:@"~",@"~",@"~",@"T",@"~",@"S",@"~",@"S",@"~",@"~", nil] //Depth4
                                                /* => => Forward direction => => */
                    , nil];
                
    }
    return self;
}

@end
