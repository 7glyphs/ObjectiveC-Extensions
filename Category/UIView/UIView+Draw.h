//
//  UIView+Draw.h
//  ObjectiveC Extensions
//
//  Created by Igor Anany on 6/01/14.
//  Copyright (c) 2014 7 glyphs Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Draw)

- (void)drawLineFromPoint:(CGPoint)from toPoint:(CGPoint)to withLineWidth:(float)width andColor:(UIColor*)color;

@end
