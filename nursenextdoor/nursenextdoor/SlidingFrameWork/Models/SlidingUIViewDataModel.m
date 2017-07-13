//
//  SlidingUIViewDataModel.m
//  nursenextdoor
//
//  Created by Kian Davoudi-Rad on 2017-06-29.
//  Copyright © 2017 Kian Davoudi-Rad. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SlidingUIViewDataModel.h"
#import "MasterUIViewCLass.h"
@implementation SlidingUIViewDataModel: NSObject

- (instancetype)init {
    self = [super init];
    if (self) {


    }
    return self;
}

- (instancetype)initWithSlidingUIViewDataModel:(SlidingUIViewDataModel*) incomingSlidingUIViewDataModel{
    /*

     Author: Kian D.Rad
     Date: Jun30th2017
     README: This function sets all coordinates for the UIView funamendal layers.
     
     */

    self = [super init];
    if (self) {


        @try {

            _masterUIViewClass = [[MasterUIViewCLass alloc] initWithMasterUIViewDataStructureApplicationUIView:([UIApplication sharedApplication].delegate.window)];

            _slidingUIViewDataModel = self;
            incomingSlidingUIViewDataModel = self;
            


        }
        @catch (NSException *exception) {
            NSLog(@" Error at SlidingUIViewDataModel.m function setUpUIViewFrameSizeA %@", exception.reason);
        }



    }
    return self;
}


@end
