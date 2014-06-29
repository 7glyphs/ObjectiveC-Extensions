//
//  NSNumber+Random.m
//  ObjectiveC Extensions
//
//  Created by Igor Anany on 27/06/14.
//  Copyright (c) 2014 7 glyphs Ltd. All rights reserved.
//

#import "NSNumber+Random.h"

@implementation NSNumber (Random)

+ (NSNumber*)randomNumberWithMin:(NSInteger)min max:(NSInteger)max {
    if (min > max) {
        NSInteger tempMax = max;
        max = min;
        min = tempMax;
    }
    NSInteger randomy = arc4random() % (max-min+1);
    randomy = randomy+min;
    return @(randomy);
}

+ (NSInteger)randomIntegerWithMin:(NSInteger)min max:(NSInteger)max {
    return [[NSNumber randomNumberWithMin:min max:max] integerValue];
}

+ (BOOL)randomBoolean {
    return [NSNumber randomIntegerWithMin:0 max:1] == 0;
}

@end
