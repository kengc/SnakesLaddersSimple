//
//  InputManager.h
//  SnakesLadders
//
//  Created by Kevin Cleathero on 2017-06-04.
//  Copyright © 2017 Kevin Cleathero. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface InputManager : NSObject

+ (NSString *)parseUserInput;
+ (NSInteger)parseplayerNumInput;
+ (void)dispayInstructions;

@end
