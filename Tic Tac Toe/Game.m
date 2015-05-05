//
//  Game.m
//  Tic Tac Toe
//
//  Created by David Rynn on 5/3/15.
//  Copyright (c) 2015 David Rynn. All rights reserved.
//

#include <stdlib.h>
#import "Game.h"
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
    
    //ideally would like to develop rules by mathematically summing the grid locations for each player
    //and figuring out which numbers == win.  If I understood NS Dictionary maybe I could do it that way.

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
        NSLog (@"GAME WON!! MOM, I WANT A PEPSI!");
    }

}

-(void) compMove : (NSString *) compLetter : (NSArray *) playGrid {
    //method for comoputer AI
    NSString *playerLetter;
    if ([compLetter isEqualToString:@"X"]) {
        playerLetter=@"O";
    } else {
        playerLetter=@"X";
    }

    NSLog(@"Computer's move");
    
    //********** check to see if close to win
    //First see if opponent is about to win || computer is about to win then block/ finish;
    
    //Check corners first
    if (
        //cell 0
        [playGrid[0] isEqualToString:@"1"] && (
        ![playGrid containsObject:playerLetter] ||
        (playGrid[3]==playGrid[6]) ||
        (playGrid[4]==playGrid[8]) ||
        (playGrid[1]==playGrid[2]) )
        )
        {
        //make first move or block move in first cell
            _moveChoice = @"1";
        }
    else if (
        //cell 2
        [playGrid[2] isEqualToString:@"3"] && (

        (playGrid[0]==playGrid[1]) ||
        (playGrid[5]==playGrid[8]) ||
        (playGrid[4]==playGrid[6]) )
    )
        {
            _moveChoice = @"3";
        }
    else if (
             //cell 6
             [playGrid[6] isEqualToString:@"7"] && (
        
             (playGrid[0]==playGrid[3]) ||
             (playGrid[2]==playGrid[4]) ||
             (playGrid[7]==playGrid[8]) )
             )
    {
        _moveChoice = @"7";
    }
    else if (
             //cell 8
             [playGrid[8] isEqualToString:@"9"] && (
             (playGrid[0]==playGrid[4]) ||
             (playGrid[2]==playGrid[5]) ||
             (playGrid[6]==playGrid[7]) )
             )
    {
        _moveChoice = @"9";
    }
    
    // check middle cells
    else if (
             //cell 1
             [playGrid[1] isEqualToString:@"2"] && (
             (playGrid[0]==playGrid[2]) ||
             (playGrid[4]==playGrid[7]) )
             )
    {
        _moveChoice = @"2";
    }
    else if (
             //cell 3
             [playGrid[3] isEqualToString:@"4"] && (
             (playGrid[0]==playGrid[6]) ||
             (playGrid[4]==playGrid[5]) )
             )
    {
        _moveChoice = @"4";
    }
    else if (
             //cell 5
             [playGrid[5] isEqualToString:@"6"] && (
             (playGrid[8]==playGrid[2]) ||
             (playGrid[4]==playGrid[3]) )
             )
    {
        _moveChoice = @"6";
    }
    else if (
             //cell 7
             [playGrid[7] isEqualToString:@"8"] && (
             (playGrid[0]==playGrid[2]) ||
             (playGrid[4]==playGrid[7]) )
             )
    {
        _moveChoice = @"8";
    }
    
 
    
// mext of middle cell is empty take it.
        
     else if ([playGrid[4] isEqual:@"5"]){
            _moveChoice = @"5";
        }
//otherwise move to available corner
    else if ([playGrid[0] isEqual:@"1"]){
            _moveChoice = @"1";
        }
    else if ([playGrid[2] isEqual:@"3"]){
        _moveChoice = @"3";
    }
    else if ([playGrid[6] isEqual:@"7"]){
        _moveChoice = @"7";
    } else {
        
        // last possible choice ... I think?
        _moveChoice =@"9";
    }
    
    
  




}
@end
