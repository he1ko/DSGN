//
//  UIView+MoveAndScaleByDrag.m
//  fgPrototyp
//
//  Created by Heiko Bublitz on 06.09.14.
//  Copyright (c) 2014 Fast Gesund. All rights reserved.
//

#import "UIView+MoveAndScaleByDrag.h"
#import <objc/runtime.h>

@implementation UIView (MoveAndScaleByDrag)

- (void)initDSGNMode {

    self.userInteractionEnabled = YES;

    UILongPressGestureRecognizer *longPress = [[UILongPressGestureRecognizer alloc]
            initWithTarget:self
             action:@selector(handleLongPress:)];

    longPress.minimumPressDuration = 1.0;
    [self addGestureRecognizer:longPress];

}

/**
 * Handle touches longer than "touch":
 *
 */
-  (void)handleLongPress:(UILongPressGestureRecognizer*)sender
{
    if (sender.state == UIGestureRecognizerStateBegan){
        NSLog(@"AUA! Aufhören!");
    }
    else if (sender.state == UIGestureRecognizerStateEnded) {
        NSLog(@"Danke ... ");
    }

}

-(id)delegateVC
{
    return objc_getAssociatedObject(self, @selector(delegate));
}


/***** SETTERS *****/

- (void) setMyDelegate:(id)listener
{
    objc_setAssociatedObject(self, @selector(delegate),listener,OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

@end
