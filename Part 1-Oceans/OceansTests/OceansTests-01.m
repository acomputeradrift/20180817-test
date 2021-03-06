//
//  OceansTests-00.m
//  Oceans
//
//  Created by Daniel Mathews on 2015-03-28.
//  Copyright (c) 2015 com.lighthouse-labs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "Fish.h"


@interface Fish()
- (instancetype)initWithWeight:(int) weight andValue:(int) value;
- (int) weight;
- (int) value;
@end

@interface OceansTests_01 : XCTestCase

@property (nonatomic, strong) Fish *fish1;
@property (nonatomic, strong) Fish *fish2;

@end

@implementation OceansTests_01

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    self.fish1 = [[Fish alloc] initWithWeight:1 andValue:15];
    self.fish2 = [[Fish alloc] initWithWeight:3 andValue:25];
    
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testFish1HasCorrectWeight
{
    int result = self.fish1.weight;
    int expected = 1;
    XCTAssertEqual((int)expected, (int)result, @"fish1 should weight 1 pound");
}

- (void)testFish1HasCorrectValue
{
    int result = self.fish1.value;
    int expected = 15;
    XCTAssertEqual((int)expected, (int)result, @"fish1 should value $15");
}

- (void)testFish2HasCorrectWeight
{
    int result = self.fish2.weight;
    int expected = 3;
    XCTAssertEqual((int)expected, (int)result, @"fish2 should weight 3 pounds");
}

- (void)testFish2HasCorrectValue
{
    int result = self.fish2.value;
    int expected = 25;
    XCTAssertEqual((int)expected, (int)result, @"fish2 should value $25");
}


@end