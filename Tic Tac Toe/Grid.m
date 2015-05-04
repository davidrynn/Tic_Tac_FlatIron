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


-(id)initGrid {
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
         */
        
        _gridArray = @[ @"\n",
                       @" ", @"|", @" ", @"|", @" ", @"\n",
                       @"_", @"|", @"_", @"|", @"_", @"\n",
                       @" ", @"|", @" ", @"|", @" ", @"\n",
                       @"_", @"|", @"_", @"|", @"_", @"\n",
                       @" ", @"|", @" ", @"|", @" "
                       
                       ];
        
        NSString * result = [_gridArray componentsJoinedByString:@""];
        NSLog(@"%@", result);

        //        NSLog(@"%@", [_gridArray componentsJoinedByString:@"\n"]);
        
    }
    return self;
}
-(void) printArray{

};
-(NSString *) gridToString{
    NSString *printout;
    
    return printout;
    
};

@end
