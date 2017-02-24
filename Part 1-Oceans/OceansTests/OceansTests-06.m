//
//  OceansTests-07.m
//  Oceans
//
//  Created by Daniel Mathews on 2015-01-02.
//  Copyright (c) 2015 com.lighthouse-labs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>

@interface OceansTests_06 : XCTestCase

@end

@implementation OceansTests_06

/*
 The submarine contains cargo where the fish are stored (in order of first caught to last caught).
 */


- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.

}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testSubHasEmptyCargo
{
    /* at initalization sub should have empty cargo. Test that the count of cargo items is 0 */
    
    XCTAssertTrue(false);
}

- (void)testSubGoesFishing
{
    /* count of cargo after submarine picks up a fish at depth = 1, tile = 3 is 1.
     Test that the count of cargo items is 1 */
    
    XCTAssertTrue(false);
}

- (void)testSubGoesFishingCorrectly
{
    /* submarine's cargo initially contains a Giant Tuna and then navigates to the giant salmon at depth = 2, tile = 1.
     Test that in cargo[0] is a Giant Tuna and in cargo[1] is a Giant Salmon */
    
    XCTAssertTrue(false);
}


@end
