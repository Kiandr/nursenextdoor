//
//  SlidingUIViewDataModel.m
//  nursenextdoor
//
//  Created by Kian Davoudi-Rad on 2017-06-29.
//  Copyright © 2017 Kian Davoudi-Rad. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SlidingUIViewDataModel.h"

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

            _templateOfMasterUIView = [[UIView alloc]initWithFrame:[UIApplication sharedApplication].delegate.window.frame];
          //  incomingSlidingUIViewDataModel = self;
          //  _slidingUIViewDataModel = incomingSlidingUIViewDataModel;

        }
        @catch (NSException *exception) {
            NSLog(@" Error at SlidingUIViewDataModel.m function setUpUIViewFrameSizeA %@", exception.reason);
        }



    }
    return self;

}

// Tester to observe the callBackfunction being invoked by an other class

- (id)callBackFunctionButton:(id)sender{
    NSLog(@"Success!");

    NSDate * now = [NSDate date];
    NSDateFormatter *outputFormatter = [[NSDateFormatter alloc] init];
    [outputFormatter setDateFormat:@"HH:mm:ss"];
    NSString *newDateString = [outputFormatter stringFromDate:now];
    NSLog(@"newDateString %@", newDateString);

    return nil;

}

@end
