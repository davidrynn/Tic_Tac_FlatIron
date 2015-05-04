//
//  Game.m
//  Tic Tac Toe
//
//  Created by David Rynn on 5/3/15.
//  Copyright (c) 2015 David Rynn. All rights reserved.
//

#import "Game.h"
#import "Player.h"
#import "Helper.h"

@implementation Game


-(void)chooseMove : (NSString *) letter {
    Helper *gameHelp = [[Helper alloc] init];
    NSLog(@"You are %@.\nPlease choose your move (Type a number between 1 and 9):\n", letter);
    NSString *move = gameHelp.getInput;
//    if ((int) move >9 || (int) move <1){
//        
//        NSLog(@"%@ is not a valid choice. Please choose your move (type a number between 1 and 9):\n", move);
//        move = gameHelp.getInput;
//
//    } else {
        _moveChoice = move;
        _arrayChoice = (int)move - 1;


}
-(void)move : (NSArray *) playGrid {
//    bool topRowWin = (playGrid[0]==playGrid[1]) && (playGrid[1]==playGrid[2]);
//    bool midRowWin = (playGrid[3]==playGrid[4]) && (playGrid[4]==playGrid[5]);
//    bool botRowWin = (playGrid[6]==playGrid[7]) && (playGrid[7]==playGrid[8]);
    bool rowWin =   ((playGrid[0]==playGrid[1]) && (playGrid[1]==playGrid[2])) ||
                    ((playGrid[3]==playGrid[4]) && (playGrid[4]==playGrid[5])) ||
                    ((playGrid[6]==playGrid[7]) && (playGrid[7]==playGrid[8]));
    
//    bool diagTopWin = (playGrid[0]==playGrid[4]) && (playGrid[4]==playGrid[8]);
//    bool diagBotWin = (playGrid[6]==playGrid[4]) && (playGrid[4]==playGrid[2]);
    bool diagWin =  ((playGrid[0]==playGrid[4]) && (playGrid[4]==playGrid[8])) ||
                    ((playGrid[6]==playGrid[4]) && (playGrid[4]==playGrid[2]));

    
//    bool lftColWin = (playGrid[0]==playGrid[3]) && (playGrid[3]==playGrid[6]);
//    bool midColWin = (playGrid[1]==playGrid[4]) && (playGrid[7]==playGrid[2]);
//    bool rgtColWin = (playGrid[2]==playGrid[5]) && (playGrid[1]==playGrid[8]);
    bool colWin =   ((playGrid[0]==playGrid[3]) && (playGrid[3]==playGrid[6])) ||
                    ((playGrid[1]==playGrid[4]) && (playGrid[7]==playGrid[2])) ||
                    ((playGrid[2]==playGrid[5]) && (playGrid[1]==playGrid[8]));
    
    if(rowWin || diagWin || colWin) {
        self.gameWon = YES;
    }

}

@end
