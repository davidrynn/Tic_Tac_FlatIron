//
//  Game.h
//  Tic Tac Toe
//
//  Created by David Rynn on 5/3/15.
//  Copyright (c) 2015 David Rynn. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Game : NSObject
@property NSString *moveChoice;
@property int arrayChoice;
@property BOOL gameWon;
-(void) chooseMove : (NSString *) letter ;
-(void) move : (NSArray *) playGrid;

@end
