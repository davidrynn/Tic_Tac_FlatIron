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
@property BOOL playGame;
-(void) chooseMove : (NSString *) letter ;
-(NSArray *) compMove : (NSArray *) playGrid1: (NSString *) compLetter;
-(void) move : (NSArray *) playGrid;

@end
