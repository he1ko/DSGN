//
//  VCDesignMode.m
//  fgPrototyp
//
//  Created by Heiko Bublitz on 06.09.14.
//  Copyright (c) 2014 Fast Gesund. All rights reserved.
//

#import "VCDesignMode.h"

@interface VCDesignMode ()

@end

@implementation VCDesignMode

- (void)viewDidLoad {

    [super viewDidLoad];

    dsgnWorker = [[DSGNWorker alloc]initWithParentVC:self];

    [dsgnWorker addView:_button];
    [dsgnWorker addView:_label];

}


- (void)notifyVCAboutView:(UIView *)view inDesignMode:(BOOL)dsgnMode
{
    NSLog(@"VC: Oh, ein %@ ist im DesignMode!", NSStringFromClass(view));
}


- (void)view:(UIView *)view didEnterDSGNMode:(BOOL)dsgnMode {


}

- (void)sachHallo:(id)sender {

    NSLog(@"Hallo, %@ !!", NSStringFromClass([sender class]));
}


@end
