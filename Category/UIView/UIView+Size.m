//
//  UIView+Utility.h
//  ObjectiveC Extensions
//
//  Created by Igor Anany on 6/01/14.
//  Copyright (c) 2014 7 glyphs Ltd. All rights reserved.
//

#import "UIView+Utility.h"

@implementation UIView (Utility)

- (float)height {
    return self.frame.size.height;
}

- (float)width {
    return self.frame.size.width;
}

- (float)x {
    return self.frame.origin.x;
}

- (float)y {
    return self.frame.origin.y;
}

- (void)setHeight:(float)h {
    CGRect f = self.frame;
    f.size.height = h;
    self.frame = f;
}

- (void)setWidth:(float)w {
    CGRect f = self.frame;
    f.size.width = w;
    self.frame = f;
}

- (void)setX:(float)x {
    CGRect f = self.frame;
    f.origin.x = x;
    self.frame = f;
}

- (void)setY:(float)y {
    CGRect f = self.frame;
    f.origin.y = y;
    self.frame = f;
}

- (void)setX:(float)x Y:(float)y {
    CGRect f = self.frame;
    f.origin.x = x;
    f.origin.y = y;
    self.frame = f;
}

- (void)centerHorizontally:(UIView*)subview {
    subview.x = floorf((self.width - subview.width) / 2.0);
}

- (void)centerVertically:(UIView*)subview {
    subview.y = floorf((self.height - subview.height) / 2.0);
}

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
