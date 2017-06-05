//
//  PlayerManager.h
//  SnakesLadders
//
//  Created by Kevin Cleathero on 2017-06-04.
//  Copyright © 2017 Kevin Cleathero. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"


@interface PlayerManager : NSObject


@property (nonatomic) NSMutableArray *players;
@property (nonatomic) NSInteger currentIndex;


-(void)Output:(Player *)player;
-(void)createPlayers:(NSInteger)num;
-(Player*)currentPlayer;
-(BOOL)Roll;


@end
