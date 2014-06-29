//
//  UIView+Draw.h
//  ObjectiveC Extensions
//
//  Created by Igor Anany on 6/01/14.
//  Copyright (c) 2014 7 glyphs Ltd. All rights reserved.
//

#import "UIView+Draw.h"

@implementation UIView (Draw)

- (void)drawLineFromPoint:(CGPoint)from toPoint:(CGPoint)to withLineWidth:(float)width andColor:(UIColor*)color {
    UIBezierPath *path = [UIBezierPath bezierPath];
    [path moveToPoint:from];
    [path addLineToPoint:to];
    CAShapeLayer *shapeLayer = [CAShapeLayer layer];
    shapeLayer.path = [path CGPath];
    shapeLayer.strokeColor = [color CGColor];
    shapeLayer.lineWidth = width;
    shapeLayer.fillColor = [[UIColor clearColor] CGColor];
    [self.layer addSublayer:shapeLayer];
}

@end
