//
//  OceansTests-04.m
//  Oceans
//
//  Created by Daniel Mathews on 2015-01-02.
//  Copyright (c) 2015 com.lighthouse-labs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "Submarine.h"
#import "Ocean.h"

@interface Submarine()
- (int)tile;
- (void) setTile:(int)tile;
- (void)forward;
- (void)backward;
@end

@interface OceansTests_04 : XCTestCase

@property (nonatomic, strong) Submarine *sub;

@end

@implementation OceansTests_04

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    self.sub = [Submarine new];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testSubOnInitialTileof0
{
    int result = self.sub.tile;
    int expected = 0;
    XCTAssertEqual((int)expected, (int)result, @"sub should initially be on the surface");
}

- (void)testSubDeptStaysSameOnForward
{
    self.sub.depth = 2;
    [self.sub forward];
    
    int result = self.sub.depth;
    int expected = 2;
    XCTAssertEqual((int)expected, (int)result, @"forward does not affect the depth of the sub");
}

- (void)testSubMovesForward
{
    [self.sub forward];
    
    int result = self.sub.tile;
    int expected = 1;
    XCTAssertEqual((int)expected, (int)result, @"moves the sub forward (towards the right) in the ocean");
}

- (void)testSubCannotMoveForwardAtMaxTile
{
    self.sub.tile = 9;
    [self.sub forward];
    
    int result = self.sub.tile;
    int expected = 9;
    XCTAssertEqual((int)expected, (int)result, @"doesn't allow the sub to move past the right edge of the ocean");
}

- (void)testSubDeptStaysSameOnBackward
{
    self.sub.depth = 3;
    [self.sub backward];
    
    int result = self.sub.depth;
    int expected = 3;
    XCTAssertEqual((int)expected, (int)result, @"backward does not affect the depth of the sub");
}

- (void)testSubMovesBackward
{
    self.sub.tile = 4;
    [self.sub backward];
    
    int result = self.sub.tile;
    int expected = 3;
    XCTAssertEqual((int)expected, (int)result, @"moves the sub backward (towards the left) in the ocean");
}

- (void)testSubCannotMoveBackward
{
    self.sub.tile = 0;
    [self.sub backward];
    
    int result = self.sub.tile;
    int expected = 0;
    XCTAssertEqual((int)expected, (int)result, @"doesn't allow the sub to move past the left edge of the ocean");
}

@end
