//
//  UIView+Utility.h
//  ObjectiveC Extensions
//
//  Created by Igor Anany on 6/01/14.
//  Copyright (c) 2014 7 glyphs Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Utility)

- (float)height;
- (float)width;
- (float)x;
- (float)y;
- (void)setHeight:(float)h;
- (void)setWidth:(float)w;
- (void)setX:(float)x;
- (void)setY:(float)y;
- (void)setX:(float)x Y:(float)y;
- (void)centerHorizontally:(UIView*)subview;
- (void)centerVertically:(UIView*)subview;
- (void)drawLineFromPoint:(CGPoint)from toPoint:(CGPoint)to withLineWidth:(float)width andColor:(UIColor*)color;

@end
