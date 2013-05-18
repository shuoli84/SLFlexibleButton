//
//  SLViewController.m
//  FlexibleButton
//
//  Created by Li Shuo on 13-5-18.
//  Copyright (c) 2013年 Li Shuo. All rights reserved.
//

#import <CoreGraphics/CoreGraphics.h>
#import "SLViewController.h"
#import "SLFlexibleButton.h"

@interface SLViewController ()

@end

@implementation SLViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    SLFlexibleButton *button = [[SLFlexibleButton alloc] init];
    /* UIBezierPath *buttonPath = [UIBezierPath bezierPath];
    [buttonPath moveToPoint:CGPointMake(10, 0)];
    [buttonPath addLineToPoint:CGPointMake(0, 20)];
    [buttonPath addLineToPoint:CGPointMake(10, 40)];
    [buttonPath addLineToPoint:CGPointMake(100, 40)];
    [buttonPath addLineToPoint:CGPointMake(100, 0)];
    [buttonPath closePath];
    button.buttonPath = buttonPath;
    */

#define PV(x,y) [NSValue valueWithCGPoint:CGPointMake((x), (y))]
    button.buttonPoints = @[
            PV(10, 0),
            PV(0, -0.5),
            PV(10, -1),
            PV(-0.5, -0.8),
            PV(-1,-1),
            PV(-1,0)
    ];

    button.linesWithColor = @[
            @[
                @[  PV(10, 0),
                    PV(0, -0.5),
                    PV(10, -1),
                ], [UIColor blackColor], @2
            ],
    ];
#undef PV
    button.titleEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 0);

    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];

    [button setTitle:@"test flexible" forState:UIControlStateNormal];
    [button sizeToFit];

    //button.frame = CGRectMake(0, 0, 100, 40);
    CGRect newFrame = button.frame;
    newFrame.size.height = 190;
    button.frame = newFrame;

    [button addTarget:self action:@selector(clicked:) forControlEvents:UIControlEventTouchUpInside];

    [self.view addSubview:button];
}

-(void)clicked:(id)sender{
    NSLog(@"clicked");
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
