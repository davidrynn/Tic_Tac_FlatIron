//
//  Player.m
//  Tic Tac Toe
//
//  Created by David Rynn on 5/3/15.
//  Copyright (c) 2015 David Rynn. All rights reserved.
//

#import "Player.h"
#import "Inputs.h"

@implementation Player

- (id)initWithName {
    self = [super init];
    if (self) {
        Inputs *nameInput =[[Inputs alloc] init];
        
        NSLog(@"Please type your name");
        _name = [nameInput getInput];
    }
    return self;
}

-(void) inputName{

    Inputs *nameInput =[[Inputs alloc] init];

    NSLog(@"Please type your name");
    _name = [nameInput getInput];

    
}

-(void) letterChooser {
    int random;
    random = arc4random_uniform(10);
    if(random>5){
        _letter = @"X";
    }
    else {
        _letter = @"O";
    }
    NSLog(@"Hi %@, You will be playing %@'s", _name, _letter);

}
@end
