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

/*
 Author: Kian D.Rad
 Date: July 14th 2017
 README: The following classes are UIVIews and callBackFunctions to manage in and out transition
 ToDo:

 */
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
            [_templateOfMasterUIView setBackgroundColor:[UIColor greenColor]];
            _slidingUIViewDataModel = self;

        }
        @catch (NSException *exception) {
            NSLog(@" Error at SlidingUIViewDataModel.m function setUpUIViewFrameSizeA %@", exception.reason);
        }



    }
    return self;

}



/*
Author: Kian D.Rad
Date: July 14th 2017
README:Tester to observe the callBackfunction being invoked by an other class
ToDo:
    1- Return te template UIView if no other button was selected. If so, return it back and load that UIView on top.
*/
- (id)callBackFunctionButton:(id)sender{
    NSLog(@"Success!");

    NSDate * now = [NSDate date];
    NSDateFormatter *outputFormatter = [[NSDateFormatter alloc] init];
    [outputFormatter setDateFormat:@"HH:mm:ss"];
    NSString *newDateString = [outputFormatter stringFromDate:now];
    NSLog(@"newDateString %@", newDateString);

    // Transition sequence
    [UIView beginAnimations:@"ShowHideView" context:nil];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseIn];
    [UIView setAnimationDuration:0.250];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationDidStopSelector:@selector(showHideDidStop:finished:context:)];
    
    // Make the animatable changes.
    // _leftUiView.alpha = 1.0;
    // _rightUiView.alpha = 0.0;


    int x = _slidingUIViewDataModel.templateOfMasterUIView.frame.size.width;
    int y = _slidingUIViewDataModel.templateOfMasterUIView.frame.size.height;

    // Transition Direction
    _templateOfMasterUIView.frame = CGRectMake(0, -100, x,y);//);[UIApplication sharedApplication].delegate.window.frame.size.height, [UIApplication sharedApplication].delegate.window.frame.size.width);

    // Commit the changes and perform the animation.
    [UIView commitAnimations];

    return nil;

}
- (void)showHideDidStop:(NSString *)animationID finished:(NSNumber *)finished context:(void *)context {
        /*
         Author: Kian D.RAd
         Date:   Jun 30th 2017
         README: This is a delegate like method that informs me, when the transition or
         animation have been completed. So based on this accurately take the next step */
    
        // Set book value to false, so the progam knows that the transition was finished.
        // This is for internal use, if you wanna use publicly use, the Objective C method.

    
        // Test Animation
        [UIView beginAnimations:@"ShowHideView2" context:nil];
        [UIView setAnimationCurve:UIViewAnimationCurveEaseOut];
        [UIView setAnimationDuration:0.25];
        [UIView setAnimationDelay:0.5];
    
        //    _rightUiView.alpha = 1.0;
        _templateOfMasterUIView.frame = [UIApplication sharedApplication].delegate.window.frame;
    
        [UIView commitAnimations];
    
    
    }


/*
 
 
 if sender == "button1"
    templateUIView remove:x;
    templateUIView add:UIVIewButton1;
 
 */


@end
