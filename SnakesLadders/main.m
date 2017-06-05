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


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BOOL gameOver = NO;
        
        [InputManager dispayInstructions];
        //only need to creat one player so outside of loop
       
        PlayerManager *players = [[PlayerManager alloc] init];

        [players createPlayers:[InputManager parseplayerNumInput]];
        
        do{
            NSString *userInput = [InputManager parseUserInput];
            if([userInput isEqualToString:@"r"] || [userInput isEqualToString:@"roll"]){
                gameOver = [players Roll];
            } else if([userInput isEqualToString:@"quit"] || [userInput isEqualToString:@"q"]){
                gameOver = YES;
            }

        }while(!gameOver);
    }
    return 0;
}
