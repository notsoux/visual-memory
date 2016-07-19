//
//  GameItemProtocol.h
//  visual-memory
//
//  Created by William Pompei on 19/07/16.
//  Copyright © 2016 William Pompei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GameValueProtocol.h"

@protocol GameItemProtocol <NSObject>

-( void)setupUsingValue:( id<GameValueProtocol>) value;
-( id< GameValueProtocol>)gameValue;

@end
