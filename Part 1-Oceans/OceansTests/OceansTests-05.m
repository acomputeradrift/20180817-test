//
//  OceansTests-06.m
//  Oceans
//
//  Created by Daniel Mathews on 2015-01-02.
//  Copyright (c) 2015 com.lighthouse-labs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "Fish.h"
#import "GiantSalmon.h"
#import "GiantTuna.h"
#import "Ocean.h"
#import "Submarine.h"
#import "DrunkCaptain.h"
#import "NormalCaptain.h"

@interface Submarine()
- (void) setDelegate:(id) delegate;
-(Fish*) goFishInOcean:(Ocean*) ocean depth:(int) depth tile:(int) tile;
@end

@interface OceansTests_05 : XCTestCase

@property (nonatomic, strong) Ocean *ocean;
@property (nonatomic, strong) Submarine *sub;
@property (nonatomic, strong) Fish *fish;
@property (nonatomic, strong) DrunkCaptain* drunky;
@property (nonatomic, strong) NormalCaptain* normal;

@end

@implementation OceansTests_05

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    self.ocean = [[Ocean alloc] init];
    self.sub = [[Submarine alloc] init];
    self.drunky = [[DrunkCaptain alloc] init];
    self.normal = [[NormalCaptain alloc] init];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

/*
 The submarine DELEGATES fishing duties to it's captain. A Captain can either be normal or drunk. If the sub has a normal captain, the submarine catches the fish at that depth and tile, if the sub has a drunk captain, whenever the captain tries to catch a fish, he always comes up empty.
 */

- (void)testNormalCaptianFindsGiantSalmon
{
    
    [self.sub setDelegate:self.normal];
    self.fish = [self.sub goFishInOcean:self.ocean depth:1 tile:3];
    XCTAssertTrue([self.fish isKindOfClass:[GiantSalmon class]], @"a normal captain finds a giant salmon on a tile that contains a giant salmon");
}

- (void)testDrunkCaptianCannotFindGiantSalmon
{
    
    [self.sub setDelegate:self.drunky];
    self.fish = [self.sub goFishInOcean:self.ocean depth:1 tile:3];
    XCTAssertNil(self.fish, @"a drunk captain cannot find a giant salmon even on a tile that contains a giant salmon");
}

- (void)testNormalCaptianFindsGiantTuna
{
    [self.sub setDelegate:self.normal];
    self.fish = [self.sub goFishInOcean:self.ocean depth:2 tile:0];
    XCTAssertTrue([self.fish isKindOfClass:[GiantTuna class]], @"a normal captain finds a giant tuna on a tile that contains a giant tuna");
}

- (void)testNormalCaptianCannotFindFishIfEmptyTile
{
    [self.sub setDelegate:self.normal];
    self.fish = [self.sub goFishInOcean:self.ocean depth:1 tile:1];

    XCTAssertNil(self.fish, @"if the tile is empty, even a normal captain cannot find a fish");
}
@end