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
        _currentSquare = [[NSNumber alloc] initWithInt:0];
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

-(BOOL)Roll{
    
    NSNumber *changeToSquare;
    
    NSNumber *squareNum = [NSNumber numberWithUnsignedInt:arc4random_uniform(6) + 1];
    //NSNumber *currentSquare = [NSNumber numberWithInteger:([self.currentSquare integerValue] + [squareNum integerValue])];
    NSNumber *currentSquare = [NSNumber numberWithInteger:([self.currentSquare integerValue] + [squareNum integerValue])];
    
    self.currentSquare = currentSquare;
    [self printRollResult:squareNum andWith:currentSquare];
    
 
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
               NSLog(@"%@ jumped from %ld to %ld", self.name, [self.currentSquare integerValue], [changeToSquare integerValue]);
               self.currentSquare = changeToSquare;
               self.currentSquare = changeToSquare;
            } else
            {
               NSLog(@"Uh-oh a SNAKE! Down you go!");
               NSLog(@"%@ jumped from %ld to %ld", self.name, [self.currentSquare integerValue], [changeToSquare integerValue]);
               self.currentSquare = changeToSquare;
               self.currentSquare = changeToSquare;
            }
        }
    }
    return NO;
}

-(NSString *)Score{
    NSString *name = [[NSString alloc] init];
    name = self.name;
    NSString *score = [[NSString alloc] init];
    score = [self.currentSquare stringValue];
    NSString *append = [[NSString alloc] init];
    append = [[name stringByAppendingString:@": "] stringByAppendingString:score];
    
    return append;
}

-(void)Output{
   NSLog(@"Congrats %@ you won Snakes & Ladders!", self.name);
}

-(void)printRollResult:(NSNumber *)squarenum andWith:(NSNumber *)currentsquare
{
  NSLog(@"%@ rolled a:  %ld", self.name, [squarenum integerValue]);
  NSLog(@"%@ landed on: %ld", self.name, [self.currentSquare integerValue]);
}

@end





