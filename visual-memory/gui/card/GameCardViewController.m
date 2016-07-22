//
//  GameCardViewController.m
//  visual-memory
//
//  Created by William Pompei on 21/07/16.
//  Copyright © 2016 William Pompei. All rights reserved.
//

#import "GameCardViewController.h"

@interface GameCardViewController()

@property (weak, nonatomic) IBOutlet UILabel *label;
@property (strong, nonatomic) id<GameItemProtocol> gameItem;

@end

@implementation GameCardViewController

#pragma mark - init
-( id)initWithText:( NSString *)text
           gameItem:( id<GameItemProtocol>)gameItem{
    self = [super init];
    if( self){
        self.label.text = text;
        self.gameItem = gameItem;
    }
    return self;
}

#pragma mark - GameCardProtocol
-( void)playCard{
    __block typeof(self) weakSelf = self;
    [UIView animateWithDuration: 0.5
                          delay:0.0f
                       options :UIViewAnimationOptionRepeat | UIViewAnimationOptionAutoreverse
                     animations:^{
                         __strong typeof( weakSelf) strongself = weakSelf;
                         strongself.label.alpha = 0;
                     }
                     completion: nil];
}
@end
