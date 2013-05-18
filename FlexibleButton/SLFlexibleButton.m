//
// Created by Li Shuo on 13-5-18.
// Copyright (c) 2013 Li Shuo. All rights reserved.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import <CoreGraphics/CoreGraphics.h>
#import "SLFlexibleButton.h"


@implementation SLFlexibleButton {

}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if(self){
        [self fb_setupSelf];
    }

    return self;
}

-(id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if(self){
        [self fb_setupSelf];
    }
    return self;
}

-(void)fb_setupSelf {
}

- (void)drawRect:(CGRect)rect {
    if(self.linesWithColor) {
        [self.linesWithColor enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
            NSArray *points = [obj objectAtIndex:0];
            UIColor *color = [obj objectAtIndex:1];
            int lineWidth = [[obj objectAtIndex:2] integerValue];
            UIBezierPath *path = [self generateBezierPathFromPoints:points];
            [color setStroke];
            path.lineWidth = lineWidth;
            [path stroke];
        }];
    }
    [super drawRect:rect];
}

-(UIBezierPath *)pathForButton:(CGFloat)inset {
    if(self.buttonPoints) {
       return [self generateBezierPathFromPoints:self.buttonPoints];
    }

    if(self.buttonPath) {
        return self.buttonPath;
    }
    else{
        return [super pathForButton:inset];
    }
}

-(UIBezierPath *)generateBezierPathFromPoints:(NSArray*)points{
    //Use the relative points to calculate the beziel path
    UIBezierPath *path = [UIBezierPath bezierPath];
    [points enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        CGPoint resultPoint= [self convertPoint:[obj CGPointValue]];

        if ([path isEmpty]) {
            [path moveToPoint:resultPoint];
        }
        else {
            [path addLineToPoint:resultPoint];
        }
    }];

    [path closePath];
    return path;
}
- (CGPoint)convertPoint:(CGPoint)point {
    CGFloat x = 0;
    if (point.x < 0) {
                x = -point.x * self.bounds.size.width;
            }
            else {
                x = point.x;
            }

    CGFloat y = 0;
    if (point.y < 0) {
                y = -point.y * self.bounds.size.height;
            }
            else {
                y = point.y;
            }

    CGPoint resultPoint = CGPointMake(x, y);
    return resultPoint;
}
@end