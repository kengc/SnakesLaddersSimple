//
//  PlayerManager.m
//  SnakesLadders
//
//  Created by Kevin Cleathero on 2017-06-04.
//  Copyright © 2017 Kevin Cleathero. All rights reserved.
//

#import "PlayerManager.h"

@implementation PlayerManager

- (instancetype)init
{
    self = [super init];
    if (self) {
        _players = [[NSMutableArray alloc] init];
        _currentIndex = 0;
        
    }
    return self;
}

-(void)createPlayers:(NSInteger)num{
    
    int nameNum = 0;
    for(int i = 0; i < num; i++){
        NSString *temp = @"Player";
        nameNum+=1;
        NSString *playerName = [temp stringByAppendingFormat:@"%d",nameNum];
        Player *player = [[Player alloc] init];
        player.name = playerName;
        [self.players addObject:player];
    }
}

-(BOOL)Roll{
   
    //call players roll
    //Player *p = [self currentPlayer];
    if ([self.delegate Roll:[self currentPlayer]]){
        [self Output:[self currentPlayer]];
        return YES;
    }
    self.currentIndex += 1;
    return NO;
}

-(void)Output:(Player *)player{
    NSLog(@"Congrats %@ you won Snakes & Ladders!", player.name);
}

-(Player*)currentPlayer{
    
//This method will return a Player* computed from the currentIndex.
//To do this I would like you to use the modulus operator. currentIndex should just keep incrementing by 1 for each roll. The method currentPlayer will compute the array index using 3 things. The modulus operator, the currentIndex and the count of the players array.
    NSInteger arrayCount = self.players.count;
    NSNumber *playerIndex = [NSNumber numberWithInteger:self.currentIndex % arrayCount];
//    NSLog(@"currentInex is: %li", (long)self.currentIndex);
//    NSLog(@"modulo result is: %li", self.currentIndex % arrayCount);
    
    
    //for(Player *player in self.players){
    for(int i = 0; i < self.players.count; i++){
        if(i == [playerIndex integerValue]){
            return [self.players objectAtIndex:i];
        }

    }
        //find the remainder of the divion
        //NSLog(@"currentInex is: %li", (long)self.currentIndex);
        //NSLog(@"modulo result is: %li", self.currentIndex % arrayCount);
        //NSNumber *playerIndex = [NSNumber numberWithInteger:self.currentIndex % arrayCount];
    
    
    
//        switch ([playerIndex integerValue]) {
//            case 0:{
//                return [self.players objectAtIndex:[playerIndex integerValue]];
//            }
//                break;
//            case 1:{
//                return [self.players objectAtIndex:[playerIndex integerValue]];
//            }
//                break;
//            case 2:{
//                return [self.players objectAtIndex:[playerIndex integerValue]];
//            }
//                break;
//            default:
//                break;
//        }
    
   // }
    
    return nil;
}


@end
