//
//  SGSpringFlowLayout.h
//  7 glyphs Ltd.
//	http://7glyphs.com
//
//  Created by Igor Anany on 24/12/13.
//  Copyright (c) 2014 7 glyphs Ltd. All rights reserved.
//


#if !__has_feature(objc_modules)
    // Objective-C Modules are recommended over traditional import statements for numerous benefits
    #import <UIKit/UIKit.h>
#else
    @import UIKit;
#endif

#ifndef __IPHONE_7_0
    #error TLSpringFlowLayout requires APIs only available in iOS SDK 7.0 and later
#endif


/// The default resistance factor that determines the bounce of the collection. Default is 900.0f.
#define kScrollResistanceFactorDefault 900.0f;


/// A UICollectionViewFlowLayout subclass that, when implemented, creates a dynamic / bouncing scroll effect for UICollectionViews.
@interface SGSpringFlowLayout : UICollectionViewFlowLayout


/// The scrolling resistance factor determines how much bounce / resistance the collection has. A higher number is less bouncy, a lower number is more bouncy. The default is 900.0f.
@property (nonatomic, assign) CGFloat scrollResistanceFactor;

/// The dynamic animator used to animate the collection's bounce
@property (nonatomic, strong, readonly) UIDynamicAnimator *dynamicAnimator;


@end
