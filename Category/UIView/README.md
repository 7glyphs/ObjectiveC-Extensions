# UIView+Utility

This category extends the UIView and any UIView subclass (which is basically any UI element) with the following methods:

```
// Get view height:
- (float)height;

// Get view width:
- (float)width;

// Get view x origin:
- (float)x;

// Get view y origin:
- (float)y;

// Set view height:
- (void)setHeight:(float)h;

// Set view width:
- (void)setWidth:(float)w;

// Set view x origin:
- (void)setX:(float)x;

// Set view y origin:
- (void)setY:(float)y;

// Set view x and y origin:
- (void)setX:(float)x Y:(float)y;

// Center subview horizontally:
- (void)centerHorizontally:(UIView*)subview;

// Center subview vertically:
- (void)centerVertically:(UIView*)subview;

// Draw line on the view:
- (void)drawLineFromPoint:(CGPoint)from toPoint:(CGPoint)to withLineWidth:(float)width andColor:(UIColor*)color;
```


## Usage

To use the category just include it to your project:
```
#import "UIView+Utility.h"
```

Now any UI element has been extended with the category methods.

You can do something like:

```
float viewX = _button.x; 	// to get view origin x
[_button setX:20.0f]; 		// to set view origin x
// OR
_button.x = 20.f; // to set view origin x

[self.view centerHorizontally:_button]; 	// to center button horizontally inside the view
[self.view centerVertically:_button]; 		// to center button vertically inside the view


// To draw 1 pixel red line in the middle of the view
[self.view drawLineFromPoint:CGPointMake(0, self.view.height/2)
                     toPoint:CGPointMake(self.view.width, self.view.height/2)
               withLineWidth:1.0f
                    andColor:[UIColor redColor]];
```