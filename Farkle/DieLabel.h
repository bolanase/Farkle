//
//  DieLabel.h
//  Farkle
//
//  Created by Anthony  Severino on 1/15/14.
//  Copyright (c) 2014 Simple Management Solutions, Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DieLabelDelegate.h"

@interface DieLabel : UILabel
@property NSString *name;
@property id<DieLabelDelegate> delegate;



-(void)roll;

    


@end
