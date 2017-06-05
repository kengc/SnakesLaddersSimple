//
//  main.m
//  SnakesLadders
//
//  Created by Kevin Cleathero on 2017-06-04.
//  Copyright © 2017 Kevin Cleathero. All rights reserved.
//

#import <Foundation/Foundation.h>
#include "InputManager.h"
#import "PlayerManager.h"

#import "Player.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BOOL gameOver = NO;
        
        [InputManager dispayInstructions];
        //only need to creat one player so outside of loop
        
        Player *player = [[Player alloc] init];
        
        PlayerManager *players = [[PlayerManager alloc] init];
        //Player *player = [[Player alloc] init];
        
        players.delegate = player;
        
        [players createPlayers:[InputManager parseplayerNumInput]];
        
        
        do{
            NSString *userInput = [InputManager parseUserInput];
            if([userInput isEqualToString:@"r"] || [userInput isEqualToString:@"roll"]){
               //gameOver = [player Roll];
                gameOver = [players Roll];
//                if(gameOver){
//                    //NSLog(@"Congrats you won Snakes & Ladders!");
//                    
//                }
            } else if([userInput isEqualToString:@"quit"] || [userInput isEqualToString:@"q"]){
                gameOver = YES;
            }

        }while(!gameOver);
    }
    return 0;
}
