//
//  PlayerManager.h
//  SnakesLadders
//
//  Created by Kevin Cleathero on 2017-06-04.
//  Copyright © 2017 Kevin Cleathero. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"
#import "PMngrDelegate.h"

@interface PlayerManager : NSObject

@property (nonatomic, weak) id<PMngrDelegate> delegate;

@property (nonatomic) NSMutableArray *players;
@property (nonatomic) NSInteger currentIndex;


-(void)createPlayers:(NSInteger)num;
-(Player*)currentPlayer;
-(BOOL)Roll;
//-(void)Output;

@end
