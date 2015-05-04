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

//NSMutableArray *gridArray = [ NSMutableArray arrayWithObjects:
//                             @"1","@2","@3","@4", "@5", nil
//                             ];
//
//NSMutableArray *arrayView = [ NSMutableArray arrayWithObjects:
//              gridArray[0], @"|", @"2", @"|", @"3", @"\n",
//              @"_", @"|", @"_", @"|", @"_", @"\n",
//              @"4", @"|", @"5", @"|", @"6", @"\n",
//              @"_", @"|", @"_", @"|", @"_", @"\n",
//              @"7", @"|", @"8", @"|", @"9", nil
//              
//              ];
/*
 First attempt at customized init
 -(id)initGrid : (NSMutableArray *) grid{
    self =[super init];
    if (self) {
 
        /* FAILED ATTEMPTS AT USING OBJ C AND C MULTIDIMENSIONAL ARRAYS
         NSArray *gridArray = [NSArray arrayWithObjects:
         [NSMutableArray array],
         [NSMutableArray array],
         [NSMutableArray array], nil];
        
        _gridArray = @[
                       @[@" ", @"|", @" ", @"|", @" "],
                       @[@"_", @"|", @"_", @"|", @"_"],
                       @[@" ", @"|", @" ", @"|", @" "],
                       @[@"_", @"|", @"_", @"|", @"_"],
                       @[@" ", @"|", @" ", @"|", @" "],
                       
                       ];
        char grid[5][5] = {
                     {" ", "|", " ", "|", " "},
                     {"_", "|", "_", "|", "_"},
                     {" ", "|", " ", "|", " "},
                     {"_", "|", "_", "|", "_"},
                     {" ", "|", " ", "|", " "}
                     
        };
        printf(grid);
 
        _gridArray = [ NSMutableArray arrayWithObjects:
                      
                      @"1", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", nil
                      
                      ];
//        [self printGrid];
//
//        _arrayView = [ NSMutableArray arrayWithObjects:
//                       grid[0], @"|", @"2", @"|", @"3", @"\n",
//                       @"_", @"|", @"_", @"|", @"_", @"\n",
//                       @"4", @"|", @"5", @"|", @"6", @"\n",
//                       @"_", @"|", @"_", @"|", @"_", @"\n",
//                       @"7", @"|", @"8", @"|", @"9", nil
//                       
//                       ];
//        
//        NSString * result = [_arrayView componentsJoinedByString:@""];
//        NSLog(@"\nPlease choose a position for your move based on the number in the grid (1-9):\n%@", result);

        
    }
    return self;
} */
-(void) printGrid{
    NSArray *viewArray = [ NSMutableArray arrayWithObjects:
                        _gridArray[0], @"|", _gridArray[1], @"|", _gridArray[2], @"\n",
                          @"_", @"|", @"_", @"|", @"_", @"\n",
                          _gridArray[3], @"|", _gridArray[4], @"|", _gridArray[5], @"\n",
                          @"_", @"|", @"_", @"|", @"_", @"\n",
                          _gridArray[6], @"|", _gridArray[7], @"|", _gridArray[8], nil
                          
                          ];
    NSString * result = [viewArray componentsJoinedByString:@""];
    NSLog(@"\nPlease choose a position for your move based on the number in the grid (1-9):\n%@", result);

};
-(NSString *) gridToString{
    NSString *printout;
    
    return printout;
    
};

@end
