//
//  Grid.m
//  Tic Tac Toe
//
//  Created by David Rynn on 5/3/15.
//  Copyright (c) 2015 David Rynn. All rights reserved.
//

#import "Grid.h"

@implementation Grid
//grid will be the View.  Will take the actual array from Game and put into visible array.


-(void) printGrid{
    NSArray *viewArray = [ NSMutableArray arrayWithObjects:
                        _gridArray[0], @"|", _gridArray[1], @"|", _gridArray[2], @"\n",
                          @"_", @"|", @"_", @"|", @"_", @"\n",
                          _gridArray[3], @"|", _gridArray[4], @"|", _gridArray[5], @"\n",
                          @"_", @"|", @"_", @"|", @"_", @"\n",
                          _gridArray[6], @"|", _gridArray[7], @"|", _gridArray[8], nil
                          
                          ];
    NSString * result = [viewArray componentsJoinedByString:@""];
    NSLog(@"\n%@", result);

};


@end
