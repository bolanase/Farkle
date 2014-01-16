//
//  DieLabel.m
//  Farkle
//
//  Created by Anthony  Severino on 1/15/14.
//  Copyright (c) 2014 Simple Management Solutions, Inc. All rights reserved.
//

#import "DieLabel.h"

@implementation DieLabel
@synthesize delegate;

-(void)roll
{
    int dieLabel = (arc4random() % 6) + 1;
    
    [self setText:[NSString stringWithFormat:@"%i", dieLabel]];
   
    
    
}

- (IBAction)labelWasTapped:(id)sender
{
   
    [delegate didChooseDie:self];

    
}



    

@end
