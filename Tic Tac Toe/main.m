//
//  main.m
//  Tic Tac Toe
//
//  Created by David Rynn on 5/1/15.
//  Copyright (c) 2015 David Rynn. All rights reserved.
//

#include <stdlib.h>
#import <Foundation/Foundation.h>
#import "Player.h"
#import "Grid.h"
#import "Game.h"
#import "Helper.h"


//declarations
//NSString *name();
NSString *intro();
//NSString *getInput();


//main
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        intro();
        Player *player1 = [[Player alloc] initWithName];
//        Computer *computer1 = [[Computer alloc] init];
        Grid *grid1 =[[Grid alloc] init];
        Game *game1 = [[Game alloc] init];
        Helper *helper = [[Helper alloc] init];
        
        BOOL play = YES;
        
        // Printout initial grid -note, this can't be a good idea to wait for this to fill array.
        grid1.gridArray = [ NSMutableArray arrayWithObjects:
                      @"1", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", nil
                           ];
        [grid1 printGrid];
        int i = 0;
        game1.gameWon = NO;
        while (!game1.gameWon){
            if (player1.goesFirst) {
            
                [game1 chooseMove:player1.letter];
                [game1 compMove:grid1.gridArray:player1.compLetter];
                
            } else
            {
                
                [game1 compMove:grid1.gridArray:player1.compLetter];
                [game1 chooseMove:player1.letter];
           
            }
            [grid1.gridArray replaceObjectAtIndex:([game1.moveChoice integerValue]-1) withObject: player1.letter];
            [grid1 printGrid];
            i++;
            [game1 checkWin:grid1.gridArray];
            NSLog(@"Game won?: %hhd, i?: %d", game1.gameWon, i);
           
        }
        NSLog(@"Would you like to play again?(Y/N)");
        NSString *playAgain = helper.getInput;
        NSLog(@"input = %@", playAgain);
        if([playAgain isEqualToString:@"N"] == NSOrderedSame) {
            play = NO;
        }

    }
    return 0;
}


//implementations
NSString *intro () {
    NSLog(@"\n*****************\nWelcome to David's Tic Tac Toe game,\nwhere you will try to make a horizontal,\nvertical or diagonal row of three\n x's or o's in a three by three grid.\n*****************");
    return 0;

}



