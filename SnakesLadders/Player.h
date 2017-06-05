//
//  Player.h
//  SnakesLadders
//
//  Created by Kevin Cleathero on 2017-06-04.
//  Copyright © 2017 Kevin Cleathero. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Player : NSObject

@property (nonatomic) NSNumber *currentSquare;
@property (nonatomic) NSDictionary *gameLogic;
@property (nonatomic) BOOL gameOver;
@property (nonatomic) NSString *name;


-(void)printRollResult:(NSNumber *)squarenum andWith:(NSNumber *)currentsquare;
-(BOOL)Roll;
-(void)Output;

@end
