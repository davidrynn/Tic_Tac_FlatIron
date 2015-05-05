//
//  Player.m
//  Tic Tac Toe
//
//  Created by David Rynn on 5/3/15.
//  Copyright (c) 2015 David Rynn. All rights reserved.
//

#import "Player.h"
#import "Helper.h"
#include <stdlib.h>

@implementation Player

- (id)initWithName {
    self = [super init];
    if (self) {
        Helper *nameInput =[[Helper alloc] init];
        
        NSLog(@"Please type your name");
        _name = [nameInput getInput];
//        [self letterChooser];
        
    }
    return self;
}

-(void) inputName{

    Helper *nameInput =[[Helper alloc] init];

    NSLog(@"Please type your name");
    _name = [nameInput getInput];

    
}

-(void) letterChooser {
    int random;
    random = arc4random_uniform(9);
    if(random>4){
        _letter = @"X";
        _compLetter = @"O";
        _goesFirst = YES;
    }
    else {
        _letter = @"O";
        _compLetter = @"X";
        _goesFirst = NO;
    }
    NSLog(@"Hi %@, You will be playing %@'s, the computer will be %@'s.  X's go first.", _name, _letter, _compLetter);

}
@end
