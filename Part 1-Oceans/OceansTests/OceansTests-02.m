//
//  OceansTests.m
//  OceansTests
//
//  Created by Daniel Mathews on 2015-01-02.
//  Copyright (c) 2015 com.lighthouse-labs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "GiantSalmon.h"
#import "GiantTuna.h"
#import "Fish.h"

@interface GiantSalmon()
- (int) weight;
- (int) value;
@end

@interface GiantTuna()
- (int) weight;
- (int) value;
@end

@interface OceansTests_02 : XCTestCase

@property (nonatomic, strong) GiantSalmon *giantSalmon;
@property (nonatomic, strong) GiantTuna *giantTuna;

@end

@implementation OceansTests_02

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    self.giantSalmon = [[GiantSalmon alloc] init];
    self.giantTuna = [[GiantTuna alloc] init];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method i n the class.
    [super tearDown];
}

- (void)testGiantSalmonIsAFish
{
    XCTAssertTrue([self.giantSalmon isKindOfClass:[Fish class]], @"All giant Salmons are fish");
}

- (void)testGiantSalmonIsCorrectWeight
{
    int result = self.giantSalmon.weight;
    int expected = 4;
    XCTAssertEqual((int)expected, (int)result, @"A giant salmon weights 4 pounds");
    
}

- (void)testGiantSalmonIsCorrectValue
{
    int result = self.giantSalmon.value;
    int expected = 30;
    XCTAssertEqual((int)expected, (int)result, @"A giant salmon's value is $30");
    
}

- (void)testGiantTunaIsAFish
{
    XCTAssertTrue([self.giantTuna isKindOfClass:[Fish class]], @"All giant tunas are fish");
}

- (void)testGiantTunaIsCorrectWeight
{
    int result = self.giantTuna.weight;
    int expected = 2;
    XCTAssertEqual((int)expected, (int)result, @"A giant tuna weights 2 pounds");
    
}

- (void)testGiantTunaIsCorrectValue
{
    int result = self.giantTuna.value;
    int expected = 25;
    XCTAssertEqual((int)expected, (int)result, @"A giant tuna's value is $25");
    
}

@end