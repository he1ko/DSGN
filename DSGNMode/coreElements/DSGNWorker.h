//
// Created by Heiko Bublitz on 07.09.14.
// Copyright (c) 2014 Fast Gesund. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol DSGNDelegate;
@class VCDesignMode;

@interface DSGNWorker : NSObject {

    id <DSGNDelegate> delegate;
    NSMutableArray *views;
}

@property (nonatomic, strong) id delegate;

- (id)initWithParentVC:(VCDesignMode *)vc;

- (void)addView:(UIView *)view;
@end

@protocol DSGNDelegate <NSObject>

- (void)view:(UIView *)view didEnterDSGNMode:(BOOL)dsgnMode;
- (void)sachHallo:(id)sender;

@end