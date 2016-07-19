//
//  GameValue.h
//  visual-memory
//
//  Created by William Pompei on 19/07/16.
//  Copyright © 2016 William Pompei. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 check game values equality 
*/
@protocol GameValueProtocol<NSObject>

-( BOOL)gameValueCheckEquals:( NSObject *)valueToCheck;

@end
