//
//  NSObject+GameTestCategory.h
//  visual-memory
//
//  Created by William Pompei on 19/07/16.
//  Copyright © 2016 William Pompei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Game.h"

@interface Game (TestCategory)

/**
 Game's private properties exposed for testing
 */


@property (nonatomic, readonly) NSInteger currentMove;
@property (nonatomic, readonly) BOOL gameFinished;

@end
