//
//  GameValue.m
//  visual-memory
//
//  Created by William Pompei on 19/07/16.
//  Copyright © 2016 William Pompei. All rights reserved.
//

#import "GameValue.h"

@interface GameValue()

@property ( nonatomic, readwrite) NSObject *value;
@end

@implementation GameValue

#pragma mark - init

-( id)initUsingValue:( NSObject *) value{
    self = [super init];
    if( self){
        self.value = value;
    }
    return self;
}

#pragma mark - game value protocol

-( BOOL)gameValueCheckEquals:( NSObject *)valueToCheck{
    BOOL result = [valueToCheck isEqual: self.value];
    return result;
}

@end
