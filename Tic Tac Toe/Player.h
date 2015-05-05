//
//  Player.h
//  Tic Tac Toe
//
//  Created by David Rynn on 5/3/15.
//  Copyright (c) 2015 David Rynn. All rights reserved.
//

#import <Foundation/Foundation.h>

//Player class just stores player properties and whether goes first

@interface Player : NSObject
@property NSString *name;
@property NSString *letter;
@property NSString *compLetter;
@property BOOL goesFirst;


-(id)initWithName;
-(void) inputName;
-(void) letterChooser;

@end
