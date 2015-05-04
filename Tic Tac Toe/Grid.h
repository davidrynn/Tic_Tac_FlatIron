//
//  Grid.h
//  Tic Tac Toe
//
//  Created by David Rynn on 5/3/15.
//  Copyright (c) 2015 David Rynn. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Grid : NSObject
@property NSArray *gridArray;
@property NSString *arrayString;

//extern char grid[5][5];

-(id)initGrid;
-(NSString *) gridToString;
-(void) printArray;
@end
