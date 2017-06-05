//
//  InputManager.m
//  SnakesLadders
//
//  Created by Kevin Cleathero on 2017-06-04.
//  Copyright © 2017 Kevin Cleathero. All rights reserved.
//

#import "InputManager.h"

@implementation InputManager


+ (NSString *)parseUserInput{
    char inputChars[255];
    
    NSLog(@"(r)oll: ");
    fgets(inputChars, 255, stdin);
    
    NSString *inputString = [NSString stringWithCString:inputChars encoding:NSUTF8StringEncoding];
    
    NSCharacterSet *characterSet = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    
    NSString *trimmed = [inputString stringByTrimmingCharactersInSet:characterSet];
    
    NSString *lowered = [trimmed lowercaseString];
    
    return lowered;
}

+ (NSInteger)parseplayerNumInput{
    
    char inputChars[255];
    BOOL continuePrompt = NO;
    NSInteger num;
    NSString *trimmed;
    
    do{
        NSLog(@"How many players?: ");
        fgets(inputChars, 255, stdin);
        
        NSString *inputString = [NSString stringWithCString:inputChars encoding:NSUTF8StringEncoding];
        
        NSCharacterSet *characterSet = [NSCharacterSet whitespaceAndNewlineCharacterSet];
        
        trimmed = [inputString stringByTrimmingCharactersInSet:characterSet];
        
        NSCharacterSet *characterSet2 = [NSCharacterSet characterSetWithCharactersInString:@"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ_!@#$%^&*()_+}{[]|/?<>:';/.,-="];
        
        NSRange r = [trimmed rangeOfCharacterFromSet:characterSet2];
        
        if(r.location != NSNotFound){
            continuePrompt = YES; //non numeric found in input
        } else {
            
            if([trimmed isEqualToString:@"0"]){
                continuePrompt = YES; //no players is unacceptable
            } else {
                continuePrompt = NO; //all numbers then lets get out of here
            }
            
        }
        
    }while(continuePrompt);
    
    num = [trimmed integerValue];
    
    return num;
}

+ (void)dispayInstructions{
    
    NSLog(@"Welcome to Snakes & Ladders \n ");
    NSLog(@"Type r to roll \n ");
}



@end
