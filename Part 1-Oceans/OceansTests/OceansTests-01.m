//
//  OceansTests.m
//  OceansTests
//
//  Created by Daniel Mathews on 2015-01-02.
//  Copyright (c) 2015 com.lighthouse-labs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "Ocean.h"
#import "Submarine.h"

@interface Submarine()
- (int)depth;
- (void) setDepth:(int)depth;
- (void)dive;
- (void)surface;
- (void)ascend;
- (void)descend;
@end

@interface OceansTests : XCTestCase

@property (nonatomic, strong) Submarine *sub;

@end

@implementation OceansTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    self.sub = [Submarine new];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testSubHasInitialDepth
{
    int result = self.sub.depth;
    int expected = 0;
    XCTAssertEqual((int)expected, (int)result, @"sub's inital depth should be at the SURFACE (0)");
}

- (void)testSubInitalDive
{
    [self.sub dive];
    int result = self.sub.depth;
    int expected = 1;
    XCTAssertEqual((int)expected, (int)result, @"sub intally dives down to depth 1");
}

- (void)testSubCannotDive
{
    self.sub.depth = 2;
    [self.sub dive];
    
    int result = self.sub.depth;
    int expected = 2;
    XCTAssertEqual((int)expected, (int)result, @"sub cannot dive if the sub is already below the surface");
}

- (void)testSubSurfaces
{
    self.sub.depth = 1;
    [self.sub surface];
    int result = self.sub.depth;
    int expected = kSURFACE;
    XCTAssertEqual((int)expected, (int)result, @"brings the sub out of the water only if the sub is at depth = 1");
}

- (void)testSubCannotSurface
{
    self.sub.depth = 2;
    [self.sub surface];
    
    int result = self.sub.depth;
    int expected = 2;
    XCTAssertEqual((int)expected, (int)result, @"can't surface the submarine when it is in deeper waters");
}

- (void)testSubDescend
{
    self.sub.depth = 2;
    [self.sub descend];

    int result = self.sub.depth;
    int expected = 3;
    XCTAssertEqual((int)expected, (int)result, @"descend takes the sub deeper into the ocean");
}

- (void)testSubCannotDescendAtSurface
{
    [self.sub descend];
    
    int result = self.sub.depth;
    int expected = 0;
    XCTAssertEqual((int)expected, (int)result, @"descend doesn't work if the submarine is at the surface");
}

- (void)testSubCannotDescendAtMaxDept
{
    self.sub.depth = 9;
    [self.sub descend];
    
    int result = self.sub.depth;
    int expected = 9;
    XCTAssertEqual((int)expected, (int)result, @"descend doesn't work if the submarine is at MaxDepth");
}

- (void)testSubAscend
{
    self.sub.depth = 2;
    [self.sub ascend];
    
    int result = self.sub.depth;
    int expected = 1;
    XCTAssertEqual((int)expected, (int)result, @"ascend allows the sub to get closer to the surface");
}

- (void)testSubCannotAscendAtDepth1
{
    self.sub.depth = 1;
    [self.sub ascend];
    
    int result = self.sub.depth;
    int expected = 1;
    XCTAssertEqual((int)expected, (int)result, @"ascend only works if the submarine is under water and not directly under the surface");
}



@end
