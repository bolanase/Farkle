//
//  ViewController.m
//  Farkle
//
//  Created by Anthony  Severino on 1/15/14.
//  Copyright (c) 2014 Simple Management Solutions, Inc. All rights reserved.
//

#import "ViewController.h"
#import "DieLabel.h"



@interface ViewController () <DieLabelDelegate>
{

    NSMutableArray *dice;
}
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    dice = [NSMutableArray array];

}

-(void)didChooseDie:(DieLabel *)dieLabel

{
    [dice addObject:dieLabel];
}



- (IBAction)onRollButtonPressed:(id)sender
{
    
    for (DieLabel *dieLabel in self.view.subviews)
        if ([dieLabel isKindOfClass:[DieLabel class]]) {
            [dieLabel roll];
            dieLabel.delegate = self;
        }
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
