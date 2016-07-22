//
//  GameCardProtocol.h
//  visual-memory
//
//  Created by William Pompei on 21/07/16.
//  Copyright © 2016 William Pompei. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol GameCardProtocol <NSObject>

/**
 do whatever needed to make the card played ( eg. blink, sound...)
 */
-( void)playCard;

@end
