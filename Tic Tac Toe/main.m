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

//declarations
//NSString *name();
NSString *intro();
//NSString *getInput();


//main
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        intro();
        Player *player1 = [[Player alloc] initWithName];
        Grid *grid1 =[[Grid alloc] init];
        Game *game1 = [[Game alloc] init];
        // Printout initial grid
        grid1.gridArray = [ NSMutableArray arrayWithObjects:
                      @"1", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", nil
                           ];
        [grid1 printGrid];
        int i = 0;
        game1.gameWon = NO;
        while (!game1.gameWon || (i <5)){
        [game1 chooseMove:player1.letter];

            [grid1.gridArray replaceObjectAtIndex:([game1.moveChoice integerValue]-1) withObject: player1.letter];
            [grid1 printGrid];
            i++;
            NSLog(@"Game won?: %hhd", game1.gameWon);
        }

    }
    return 0;
}


//implementations
NSString *intro () {
    NSLog(@"\n*****************\nWelcome to David's Tic Tac Toe game,\nwhere you will try to make a horizontal,\nvertical or diagonal row of three\n x's or o's in a three by three grid.\n*****************");
    return 0;

}



