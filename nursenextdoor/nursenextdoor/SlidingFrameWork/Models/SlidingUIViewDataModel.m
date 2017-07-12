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
            //_masterUIViewClass.masterUIView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 500, 500)];
            //_masterUIViewClass.masterUIView.backgroundColor = [UIColor blueColor];
            //_masterUIViewClass.masterUIView.frame = _masterUIViewClass.masterUIView.frame;

            /*
             
             _masterUIView = [[UIView alloc] initWithFrame:(applicationUIView.frame)];
             _masterUIViewFrame  = applicationUIView.frame;
             _masterUIViewBackGroundColor = [UIColor greenColor];

             */
            incomingSlidingUIViewDataModel = self;
        }
        @catch (NSException *exception) {
            NSLog(@" Error at SlidingUIViewDataModel.m function setUpUIViewFrameSizeA %@", exception.reason);
        }



    }
    return self;
}


@end
