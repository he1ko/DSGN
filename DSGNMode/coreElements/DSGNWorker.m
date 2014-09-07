//
// Created by Heiko Bublitz on 07.09.14.
// Copyright (c) 2014 Fast Gesund. All rights reserved.
//

#import "DSGNWorker.h"
#import "VCDesignMode.h"

@implementation DSGNWorker

- (id)initWithParentVC:(VCDesignMode *)vc {

    self = [super init];
    if(self) {
        _delegate = vc;
    }
    [_delegate sachHallo:self];
    return self;
}


- (void)addView:(UIView *)view {

    view.userInteractionEnabled = YES;

    UILongPressGestureRecognizer *longPress = [[UILongPressGestureRecognizer alloc]
            initWithTarget:self
                    action:@selector(handleLongPress:)];

    longPress.minimumPressDuration = 1.0;
    [view addGestureRecognizer:longPress];



    [views addObject:view];

}


/***** TOUCH HANDLERS *****/

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

@end
