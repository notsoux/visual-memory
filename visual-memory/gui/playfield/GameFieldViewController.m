//
//  GameFieldViewController.m
//  visual-memory
//
//  Created by William Pompei on 21/07/16.
//  Copyright © 2016 William Pompei. All rights reserved.
//

#import "GameFieldViewController.h"
#import "GameCardViewController.h"
#import "LayoutUtil.h"

@interface GameFieldViewController()
@property (strong, nonatomic) NSArray *gameCardList;
@property (weak, nonatomic) IBOutlet UIView *gameCardContainerView;
@end

@implementation GameFieldViewController

-( void)viewDidLoad{
    [super viewDidLoad];
    NSLog( @"%@", [NSString stringWithFormat:@"viewDidLoad self.gameCardContainerView.subviews -> %@", self.gameCardContainerView.subviews ]);
}

-( void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    NSLog( @"%@",[NSString stringWithFormat:@"viewWillAppear self.gameCardContainerView.subviews -> %@", self.gameCardContainerView.subviews ]);
}

-( void)viewDidLayoutSubviews{
    [super viewDidLayoutSubviews];
    NSLog( @"%@",[NSString stringWithFormat:@"viewDidLayoutSubviews self.gameCardContainerView.subviews -> %@", self.gameCardContainerView.subviews ]);
}

-( void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear: animated];
    NSMutableArray *mutList = [[NSMutableArray alloc] init];
    for( int i = 0; i < 4; i++){
        GameCardViewController *card = [[GameCardViewController alloc] init];
        
        //card view's tags starts from 1
        UIView *cardView = [self.gameCardContainerView viewWithTag: i + 1];
        [LayoutUtil addChild: card inPlaceholderView:cardView toParent:self usingSetup:^{
            
        } andAnimationBlock:^{
            
        } withDuration: 0.0];
        mutList[ i] = card;
    }
    self.gameCardList = [mutList copy];
}
@end
