//
//  Game.m
//  visual-memory
//
//  Created by William Pompei on 19/07/16.
//  Copyright © 2016 William Pompei. All rights reserved.
//

#import "Game.h"
#import "GameItem.h"
#import "GameValueProtocol.h"
#import "GameItemProtocol.h"

#import "GameValue.h"

@interface Game()

@property (nonatomic, strong) NSArray< id< GameItemProtocol>> *gameSequence;

@property BOOL gameFinished;
@property NSInteger currentMove;

@end
@implementation Game

/**
 game setup
 
 gameTypeClass: objct to be used as template to create GameItem which
 sequence is made of
 differentValues: values to pick at random to compose sequence
 
 */
-( void)newGameUsingGameType:( id<GameItemProtocol>) gameTypeClass
             differentValues:( NSInteger) differentValues
              sequenceLength:( NSInteger) sequenceLength{
    
    NSMutableArray *gameSequence = [[NSMutableArray alloc] init];
    Class gameTypeClassAsClass = gameTypeClass.class;
    for( int i = 0; i < sequenceLength; i++){
        id< GameItemProtocol> gameItem = [[gameTypeClassAsClass alloc] init];
        NSInteger value = arc4random_uniform( differentValues);
        GameValue *gameValue = [[GameValue alloc] initUsingValue: @( value)];
        [gameItem setupUsingValue: gameValue];
        gameSequence[ i] = gameItem;
    }
    self.gameSequence = [gameSequence copy];
    self.gameFinished = NO;
    self.currentMove = -1;
}

/**
 check current move
 
 result: called with check result
 finish: called after last item was checked.
 
 Note: "finish" block is called *after* the result block (which is called
 for every move, even if it's the last one)
 */
-( void)checkMove:( id<GameValueProtocol> )gameValue
           result:( void(^)(BOOL))result
           finish:( void(^)(void))finish{
    self.currentMove ++;
    id<GameItemProtocol> gameItemToCheck = self.gameSequence[ self.currentMove];
    id<GameValueProtocol> value = [gameItemToCheck gameValue];
    BOOL check = [gameValue gameValueCheckEquals: value];
    result( check);
    if( self.currentMove == self.gameSequence.count - 1){
        finish();
    }
}

-( NSArray< id<GameItemProtocol>> *)gameSequence{
    return _gameSequence;
}

@end
