//
//  visual_memoryTests.m
//  visual-memoryTests
//
//  Created by William Pompei on 19/07/16.
//  Copyright © 2016 William Pompei. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Game.h"
#import "GameItem.h"
#import "GameValue.h"
#import "GameItemProtocol.h"
#import "GameValueProtocol.h"
#import "Game+TestCategory.h"

@interface visual_memoryTests : XCTestCase

@end

@implementation visual_memoryTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testVisualItemEquality{
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    id< GameItemProtocol> visualItem = [[GameItem alloc] init];
    id< GameValueProtocol> value = [[GameValue alloc] initUsingValue: @( 1)];
    [visualItem setupUsingValue: value];
    XCTAssertTrue( [[visualItem gameValue] gameValueCheckEquals: @( 1)]);
    XCTAssertFalse( [[visualItem gameValue] gameValueCheckEquals: @( 2)]);
}

-( void)testVisualItemGame{
    NSInteger count = 4;
    Game *game = [[Game alloc] init];
    [game newGameUsingGameType: [GameItem templateObject] differentValues:2 sequenceLength:count];
    XCTAssertNotNil( [game gameSequence]);
    XCTAssertEqual( [game gameSequence].count, count);
    XCTAssertEqual( game.currentMove, -1);
    XCTAssertFalse( game.gameFinished);
}

-( void)testVisualItemGamePlay{
    NSInteger count = 4;
    Game *game = [[Game alloc] init];
    [game newGameUsingGameType: [GameItem templateObject] differentValues:2 sequenceLength:count];
    GameValue *gameValue = [[GameValue alloc] initUsingValue: @(1)];
    __block BOOL finishBlockCalled = NO;
    for( int i = 0; i < count; i++){
        [game checkMove: gameValue result:^(BOOL result) {
            
        } finish:^{
            
            finishBlockCalled = YES;
            XCTAssertEqual( i, count - 1, @"finish block called after checking last item");
        }];
    }
    XCTAssertTrue( finishBlockCalled);
}



- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
