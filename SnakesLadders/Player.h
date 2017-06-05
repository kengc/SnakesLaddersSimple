//
//  Player.h
//  SnakesLadders
//
//  Created by Kevin Cleathero on 2017-06-04.
//  Copyright © 2017 Kevin Cleathero. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PMngrDelegate.h"
//#import "PlayerManager.h"

@interface Player : NSObject <PMngrDelegate>
//@interface Player : PlayerManager

@property (nonatomic) NSNumber *currentSquare;
@property (nonatomic) NSDictionary *gameLogic;
@property (nonatomic) NSString *output;
@property (nonatomic) BOOL gameOver;
@property (nonatomic) NSString *name;

//-(BOOL)Roll;
-(void)printRollResult:(NSNumber *)squarenum andWith:(NSNumber *)currentsquare for:(Player *)player;

@end
