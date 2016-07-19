//
//  GameItem.m
//  visual-memory
//
//  Created by William Pompei on 19/07/16.
//  Copyright © 2016 William Pompei. All rights reserved.
//

#import "GameItem.h"

@interface GameItem()
@property ( nonatomic, strong) id<GameValueProtocol> value;

@end
@implementation GameItem

#pragma mark - game item protocol

-( void)setupUsingValue:( id<GameValueProtocol>) value{
    self.value = value;
}

-( id< GameValueProtocol>)gameValue{
    return self.value;
}

#pragma mark - game value protocol

-( BOOL)gameValueCheckEquals:(NSObject *)valueToCheck{
    return [self.value isEqual: valueToCheck];
}

#pragma mark - template object
static id<GameItemProtocol> __static_GameItem_templateObject;
+(void)initialize{
    __static_GameItem_templateObject = [[GameItem alloc] init];
}

+( id<GameItemProtocol>)templateObject{
    return __static_GameItem_templateObject;
}


@end
