//
//  GameCardViewController.h
//  visual-memory
//
//  Created by William Pompei on 21/07/16.
//  Copyright © 2016 William Pompei. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GameCardProtocol.h"
#import "GameItemProtocol.h"

@interface GameCardViewController : UIViewController <GameCardProtocol>

-( id)initWithText:( NSString *)text
           gameItem:( id<GameItemProtocol>)gameItem;


@end
