//
//  VCDesignMode.h
//  fgPrototyp
//
//  Created by Heiko Bublitz on 06.09.14.
//  Copyright (c) 2014 Fast Gesund. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DSGNWorker.h"

@class DSGNLabel;
@class DSGNButton;

@interface VCDesignMode : UIViewController <DSGNDelegate> {

    DSGNWorker *dsgnWorker;
}

@property (strong, nonatomic) IBOutlet DSGNButton *button;
@property (strong, nonatomic) IBOutlet DSGNLabel *label;


@end
