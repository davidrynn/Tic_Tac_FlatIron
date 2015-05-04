//
//  Grid.h
//  Tic Tac Toe
//
//  Created by David Rynn on 5/3/15.
//  Copyright (c) 2015 David Rynn. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Grid : NSObject
@property NSMutableArray *gridArray;
@property NSMutableArray *arrayView;
@property NSString *arrayString;

//extern char grid[5][5];

//-(id)initGrid;
-(NSString *) gridToString;
-(void) printGrid;
@end
