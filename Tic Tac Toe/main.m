//
//  main.m
//  Tic Tac Toe
//
//  Created by David Rynn on 5/1/15.
//  Copyright (c) 2015 David Rynn. All rights reserved.
//

//TO DO:  Add two player functionality
//          Clean Up/ Refactor
//         MVC?  Pretty messy code. 

#include <stdlib.h>
#import <Foundation/Foundation.h>
#import "Player.h"
#import "Grid.h"
#import "Game.h"
#import "Helper.h"


//declarations
NSString *intro();



//main
int main(int argc, const char * argv[]) {
    @autoreleasepool {
//intro() == brief description of game
        intro();

//Player class just stores players' properties and whether goes first
        Player *player1 = [[Player alloc] initWithName];

//Grid class stores game array and prints it onto grid -- sort of View
        Grid *grid1 =[[Grid alloc] init];
        
//Game class has the mechanics of the game including AI and winning conditions
        Game *game1 = [[Game alloc] init];
        
//Hellper class just is an input GET to help other classes
        Helper *helper = [[Helper alloc] init];
        
//Set initial booleans for game play and whether game is won:
        
        BOOL play = YES;
        
//start of play loop
        while (play) {
        

        
        game1.gameWon = NO;
        int gameCounter = 1;
            
        [player1 letterChooser ];
        
        // fill initial grid array-note, this can't be a good idea to wait for this to fill array.
        grid1.gridArray= [[NSMutableArray alloc] initWithCapacity:10];
        grid1.gridArray = [ NSMutableArray arrayWithObjects:
                      @"1", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", nil
                           ];
        //print grid to console
        [grid1 printGrid];

        
        while ((!game1.gameWon) && (gameCounter<10)){
            NSLog(@"Turn %d:", gameCounter);
            if (player1.goesFirst) {
            
                [game1 chooseMove:player1.letter : grid1.gridArray];
                [grid1.gridArray replaceObjectAtIndex:([game1.moveChoice integerValue]-1) withObject: player1.letter];
                [grid1 printGrid];
                [game1 checkWin:grid1.gridArray];
                gameCounter ++;
                
                if ((!game1.gameWon) && (gameCounter<10)){
                [game1 compMove: player1.compLetter: grid1.gridArray];
                [grid1.gridArray replaceObjectAtIndex:([game1.moveChoice integerValue]-1) withObject: player1.compLetter];
                [grid1 printGrid];
                [game1 checkWin:grid1.gridArray];
                gameCounter ++;
                }

            } else
            {
                
                [game1 compMove: player1.compLetter: grid1.gridArray];
                [grid1.gridArray replaceObjectAtIndex:([game1.moveChoice integerValue]-1) withObject: player1.compLetter];
                [grid1 printGrid];
                [game1 checkWin:grid1.gridArray];
                 gameCounter ++;
                
                if ((!game1.gameWon) && (gameCounter<10)){
                [game1 chooseMove:player1.letter : grid1.gridArray];
                [grid1.gridArray replaceObjectAtIndex:([game1.moveChoice integerValue]-1) withObject: player1.letter];
                [grid1 printGrid];
                [game1 checkWin:grid1.gridArray];
                gameCounter ++;
                }
            }

            
           
        }
            if (!game1.gameWon) {
                NSLog(@"Hmmm... Looks like a draw.");
            }
//Check if want's to play again
        NSLog(@"Would you like to play again?(Y/N)");
        NSString *playAgain = helper.getInput;
        if(![playAgain isEqualToString:@"Y"]) {
            play = NO;
        }
        }
    }
    return 0;
}


//implementations
NSString *intro () {
    NSLog(@"\n*****************\nWelcome to David's Tic Tac Toe game,\nwhere you will try to make a horizontal,\nvertical or diagonal row of three\n x's or o's in a three by three grid.\n*****************");
    return 0;

}



