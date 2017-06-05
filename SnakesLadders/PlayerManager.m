//
//  PlayerManager.m
//  SnakesLadders
//
//  Created by Kevin Cleathero on 2017-06-04.
//  Copyright © 2017 Kevin Cleathero. All rights reserved.
//

#import "PlayerManager.h"
#import "Player.h"

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
    Player *p = [self currentPlayer];
    if(p.Roll){
        [self Output:p];
        return YES;
    }
    
    self.currentIndex += 1;
    return NO;
}

-(void)Output:(Player *)player{
    player.Output;
}

-(Player*)currentPlayer{
    
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
    
    return nil;
}


@end
