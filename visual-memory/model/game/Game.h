//
//  Game.h
//  visual-memory
//
//  Created by William Pompei on 19/07/16.
//  Copyright © 2016 William Pompei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GameValueProtocol.h"
#import "GameItemProtocol.h"

@interface Game : NSObject


-( void)newGameUsingGameType:( id<GameItemProtocol>) gameTypeClass
             differentValues:( NSInteger) differentValues
              sequenceLength:( NSInteger) sequenceLength;

-( void)checkMove:( id<GameValueProtocol> )gameValue
           result:( void(^)(BOOL))result
           finish:( void(^)(void))finish;

-( NSArray< id<GameItemProtocol>> *)gameSequence;

@end
