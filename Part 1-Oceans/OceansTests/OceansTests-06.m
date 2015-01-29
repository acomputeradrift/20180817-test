//
//  OceansTests-07.m
//  Oceans
//
//  Created by Daniel Mathews on 2015-01-02.
//  Copyright (c) 2015 com.lighthouse-labs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "Submarine.h"
#import "Fish.h"
#import "GiantSalmon.h"
#import "GiantTuna.h"
#import "Ocean.h"

@interface OceansTests_06 : XCTestCase

@property (nonatomic, strong) Submarine *sub;
@property (nonatomic, strong) Ocean *ocean;
@property (nonatomic, strong) GiantSalmon *salmon;
@property (nonatomic, strong) GiantTuna *tuna;

@end

@implementation OceansTests_06


/*
 The submarine contains cargo where the fish are stored (in order of first caught to last caught).
 */


- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    self.sub = [[Submarine alloc] init];
    self.ocean = [[Ocean alloc] init];
    self.salmon = [[GiantSalmon alloc] init];
    self.tuna = [[GiantTuna alloc] init];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testSubHasEmptyCargo
{
    int result = (int)self.sub.cargo.count;
    int expected = 0;
    XCTAssertEqual((int)expected, (int)result, @"at initalization sub should have empty cargo");
}

- (void)testSubGoesFishing
{
    
    self.sub.depth = 1;
    self.sub.tile = 3;
    
    [self.sub addtoCargo:self.ocean depth:self.sub.depth tile:self.sub.tile];
    
    int result = (int)self.sub.cargo.count;
    int expected = 1;
    
    XCTAssertEqual((int)expected, (int)result, @"count of cargo after picks up a fish at depth = 1, tile = 3 is 1");
}

- (void)testSubGoesFishingCorrectly
{
    
    [self.sub dive];
    [self.sub descend];
    [self.sub forward];
    
    //sub's cargo initially contains a Giant Tuna
    self.sub.cargo = [NSMutableArray arrayWithObjects:self.tuna, nil];
    
    [self.sub addtoCargo:self.ocean depth:self.sub.depth tile:self.sub.tile];
    
    BOOL expected = false;
    
    if ([self.sub.cargo[0] isKindOfClass:[GiantTuna class]]){
        if ([self.sub.cargo[1] isKindOfClass:[GiantSalmon class]]){
            expected = true;
        }
    }
    
    XCTAssertTrue(expected, @"sub's cargo initially contains a Giant Tuna and then navigates to the giant salmon at depth = 2, tile = 1");
}


@end
