//
//  GameValue.h
//  visual-memory
//
//  Created by William Pompei on 19/07/16.
//  Copyright © 2016 William Pompei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GameValueProtocol.h"

@interface GameValue : NSObject <GameValueProtocol>

@property ( nonatomic, readonly) NSObject *value;
-( id)initUsingValue:( NSObject *) value;


@end
