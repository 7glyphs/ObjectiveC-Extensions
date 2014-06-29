//
//  NSNumber+Random.h
//  ObjectiveC Extensions
//
//  Created by Igor Anany on 27/06/14.
//  Copyright (c) 2014 7 glyphs Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSNumber (Random)

+ (NSNumber*)randomNumberWithMin:(NSInteger)min max:(NSInteger)max;
+ (NSInteger)randomIntegerWithMin:(NSInteger)min max:(NSInteger)max;
+ (BOOL)randomBoolean;

@end
