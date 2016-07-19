//
//  GameItem.h
//  visual-memory
//
//  Created by William Pompei on 19/07/16.
//  Copyright © 2016 William Pompei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GameValueProtocol.h"
#import "GameItemProtocol.h"

/**
 game item
*/
@interface GameItem : NSObject <GameItemProtocol>

@property ( nonatomic, readonly) id<GameValueProtocol> value;

/**
 template object to get class to be used to create GameItem's instances
 */
+( id<GameItemProtocol>)templateObject;

@end
