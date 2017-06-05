//
//  PMngrDelegate.h
//  SnakesLadders
//
//  Created by Kevin Cleathero on 2017-06-04.
//  Copyright © 2017 Kevin Cleathero. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Player;

@protocol PMngrDelegate <NSObject>

-(BOOL)Roll:(Player *)player;
-(void)Output:(Player *)player;

@end

