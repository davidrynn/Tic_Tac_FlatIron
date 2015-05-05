//
//  Game.m
//  Tic Tac Toe
//
//  Created by David Rynn on 5/3/15.
//  Copyright (c) 2015 David Rynn. All rights reserved.
//

#include <stdlib.h>
#import "Game.h"
#import "Player.h"
#import "Helper.h"

@implementation Game


-(void)chooseMove : (NSString *) letter : (NSArray *) playGrid {
    Helper *gameHelp = [[Helper alloc] init];
    BOOL validMove =NO;
    //loop runs until correct input
    while (!validMove){
        NSLog(@"\nPlease choose your move (Type a number between 1 and 9 corresponding to the numbers in the grid):\n");
        NSString *move = gameHelp.getInput;
        _arrayChoice = (int)[move  integerValue]- 1;
        // need to test whether input is 1) valid number or 2) available move
   //     NSLog(@"At the location is: %@", [playGrid objectAtIndex:_arrayChoice]);
        if (!(_arrayChoice>=0&&_arrayChoice<=9) ||
            [[playGrid objectAtIndex:_arrayChoice]  isEqual: @"X"] ||
            [[playGrid objectAtIndex:_arrayChoice]  isEqual: @"O"] )
        
        {
            NSLog(@"Invalid Choice");
            
        } else
        {
            _moveChoice = move;
            validMove = YES;
        }
    }
    


}
-(void)checkWin : (NSArray *) playGrid {

    bool rowWin =   ((playGrid[0]==playGrid[1]) && (playGrid[1]==playGrid[2])) ||
                    ((playGrid[3]==playGrid[4]) && (playGrid[4]==playGrid[5])) ||
                    ((playGrid[6]==playGrid[7]) && (playGrid[7]==playGrid[8]));
    

    bool diagWin =  ((playGrid[0]==playGrid[4]) && (playGrid[4]==playGrid[8])) ||
                    ((playGrid[6]==playGrid[4]) && (playGrid[4]==playGrid[2]));

    bool colWin =   ((playGrid[0]==playGrid[3]) && (playGrid[3]==playGrid[6])) ||
                    ((playGrid[1]==playGrid[4]) && (playGrid[7]==playGrid[2])) ||
                    ((playGrid[2]==playGrid[5]) && (playGrid[1]==playGrid[8]));
    
    if(rowWin || diagWin || colWin) {
        self.gameWon = YES;
    }

}

-(void) compMove : (NSString *) compLetter : (NSArray *) playGrid {

    NSLog(@"compmove");
    
//    if([playGrid containsObject:@"X"]){
//        NSLog(@"You played X");
//    }
//    else {
//        NSLog(@"You didn't play x?");
//    }
//    




}
@end
