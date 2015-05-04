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

//declarations
//NSString *name();
NSString *intro();
//NSString *getInput();


//main
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        intro();
        Player *player1 = [[Player alloc] initWithName];
        NSLog(@"Hi %@", player1.name);
        Grid *etgrid1 =[[Grid alloc] initGrid];
//        one working part -- first glimpses of array
        NSArray *testArray = @[@1, @2, @4, @5, @6];
        NSLog(@"%@", [testArray componentsJoinedByString:@"|"]);
    }
    return 0;
}


//implementations
NSString *intro () {
    NSLog(@"\n*****************\nWelcome to David's Tic Tac Toe game,\nwhere you will try to make a horizontal,\nvertical or diagonal row of three\n x's or o's in a three by three grid.\n*****************");
    return 0;

}



