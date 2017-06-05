//
//  Player.m
//  SnakesLadders
//
//  Created by Kevin Cleathero on 2017-06-04.
//  Copyright © 2017 Kevin Cleathero. All rights reserved.
//

#import "Player.h"

@implementation Player

- (instancetype)init
{
    self = [super init];
    if (self) {
        _gameOver = NO;
        _currentSquare = 0;
        _gameLogic = [[NSDictionary alloc] initWithObjectsAndKeys:
    [NSNumber numberWithInt:14],[NSNumber numberWithInt:4],
    [NSNumber numberWithInt:31],[NSNumber numberWithInt:9],
    [NSNumber numberWithInt:7],[NSNumber numberWithInt:17],
    [NSNumber numberWithInt:38],[NSNumber numberWithInt:20],
    [NSNumber numberWithInt:84],[NSNumber numberWithInt:28],
    [NSNumber numberWithInt:59],[NSNumber numberWithInt:40],
    [NSNumber numberWithInt:67],[NSNumber numberWithInt:51],
    [NSNumber numberWithInt:81],[NSNumber numberWithInt:63],
    [NSNumber numberWithInt:60],[NSNumber numberWithInt:64],
    [NSNumber numberWithInt:26],[NSNumber numberWithInt:89],
    [NSNumber numberWithInt:75],[NSNumber numberWithInt:95],
    [NSNumber numberWithInt:78],[NSNumber numberWithInt:99], nil];
        return [super init];
    }
    
    return self;
}

-(BOOL)Roll:(Player *)player{
    
    NSNumber *changeToSquare;
    
    NSNumber *squareNum = [NSNumber numberWithUnsignedInt:arc4random_uniform(6) + 1];
    //NSNumber *currentSquare = [NSNumber numberWithInteger:([self.currentSquare integerValue] + [squareNum integerValue])];
    NSNumber *currentSquare = [NSNumber numberWithInteger:([player.currentSquare integerValue] + [squareNum integerValue])];
    
    player.currentSquare = currentSquare;
    [self printRollResult:squareNum andWith:currentSquare for:player];
 
    self.currentSquare = currentSquare;
    
    if([currentSquare integerValue] >= 100){
        return YES;
    }
    
    for(NSNumber *square in self.gameLogic)
    {
        
        if([square isEqualToNumber:currentSquare])
        {
            //If the roll matches a key then set the currentSquare property to the associated value
            changeToSquare = [self.gameLogic objectForKey:square];
            
            if([currentSquare integerValue] < [changeToSquare integerValue])
            {
               NSLog(@"Stairway! Up you go");
               NSLog(@"%@ jumped from %ld to %ld", player.name, [self.currentSquare integerValue], [changeToSquare integerValue]);
               self.currentSquare = changeToSquare;
               player.currentSquare = changeToSquare;
            } else
            {
               NSLog(@"Uh-oh a SNAKE! Down you go!");
               NSLog(@"%@ jumped from %ld to %ld", player.name, [self.currentSquare integerValue], [changeToSquare integerValue]);
               self.currentSquare = changeToSquare;
               player.currentSquare = changeToSquare;
            }
        }
    }
    return NO;
}

-(void)Output{
    //
}

-(void)Output:(Player *)player{
    
}

-(void)printRollResult:(NSNumber *)squarenum andWith:(NSNumber *)currentsquare for:(Player *)player
{
  NSLog(@"%@ rolled a:  %ld", player.name, [squarenum integerValue]);
  //NSLog(@"%@ landed on: %ld", player.name, [currentsquare integerValue]);
  NSLog(@"%@ landed on: %ld", player.name, [player.currentSquare integerValue]);
}

@end





