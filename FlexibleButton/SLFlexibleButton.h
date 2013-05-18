//
// Created by Li Shuo on 13-5-18.
// Copyright (c) 2013 Li Shuo. All rights reserved.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import <Foundation/Foundation.h>
#import <UIGlossyButton.h>

@interface SLFlexibleButton : UIGlossyButton

@property (nonatomic,strong) UIBezierPath* buttonPath;
@property (nonatomic,strong) NSArray* buttonPoints;
@property (nonatomic,strong) NSArray* linesWithColor;
@end