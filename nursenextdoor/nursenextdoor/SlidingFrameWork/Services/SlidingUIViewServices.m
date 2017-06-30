//
//  SlidingUIViewServices.m
//  nursenextdoor
//
//  Created by Kian Davoudi-Rad on 2017-06-29.
//  Copyright © 2017 Kian Davoudi-Rad. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "SlidingUIViewDataModel.h"
#import "SlidingUIViewServices.h"

@implementation SlidingUIViewServices:NSObject

bool animationIsInProgress;


#pragma Cunstroctors
- (instancetype)init {
    self = [super init];
    if (self) {


    }
    return self;
}


//SlidingUIViewDataModel
#pragma Private Members

- (UIView*)ButtonWithTitle {



        UIView *uiBrandFooterView =[[UIView alloc]initWithFrame:CGRectMake(0,0,150,100)];
        uiBrandFooterView.backgroundColor = [UIColor clearColor];

        UIButton *upcomingVisistsButton = [UIButton buttonWithType:UIButtonTypeSystem];
        upcomingVisistsButton.frame = CGRectMake(0,0,150,100);
        upcomingVisistsButton.backgroundColor = [UIColor yellowColor];
        // This shall be localized for various languages
        NSString *UpcomingVisits = [[NSString alloc] initWithFormat:@"upcoming visits"];
        upcomingVisistsButton.userInteractionEnabled = YES;
        [upcomingVisistsButton setTitle:UpcomingVisits forState:UIControlStateNormal];
        [upcomingVisistsButton setTintColor:[UIColor whiteColor]];
        [upcomingVisistsButton addTarget:self  action:@selector(taggleUIViews:) forControlEvents:UIControlEventTouchDown];
        [uiBrandFooterView addSubview:upcomingVisistsButton];
        
        return uiBrandFooterView;
    }
- (instancetype) buildMasterUiViewEntryPointToTheClass {

/*
 Author: Kian D.Rad
 Date:   Jun 29th 2017
 ReadMe: This function will initalize three UIVIews, master, left and right. 
        The master contains a function to toggle, and the two will transtiion.
 */


    _leftUiView  = [[UIView alloc] initWithFrame:CGRectMake(0,0,500,500)];
    _leftUiView.backgroundColor = [UIColor redColor];
    _rightUiView = [[UIView alloc] initWithFrame:CGRectMake(0,0,500,500)];
    _rightUiView.backgroundColor = [UIColor greenColor];
    _masterUIView = [[UIView alloc]initWithFrame:CGRectMake(0,0,500,500)];
    _masterUIView.backgroundColor = [UIColor clearColor];
    _mainButton = [self ButtonWithTitle];

    [_rightUiView insertSubview:_mainButton atIndex:0];




    [_masterUIView insertSubview: _leftUiView atIndex:0];
    [_masterUIView insertSubview:_rightUiView atIndex:1];


    return _masterUIView;

}
- (void)taggleUIViews:(id)sender {

/*
 Author: Kian D.RAd
 Date:   Jun 30th 2017
 README: Here, I only call private methods to perform transition on number of UIVIews, 
        But, the actual position of X and Y (Coordinates) have been built in more generic 
        manner, please have a look at those function to change transition direction.
 */




    if (!animationIsInProgress){


        // If its running dont do anything waite.
        animationIsInProgress  = true;

        // Transition sequence
        [UIView beginAnimations:@"ShowHideView" context:nil];
        [UIView setAnimationCurve:UIViewAnimationCurveEaseIn];
        [UIView setAnimationDuration:0.250];
        [UIView setAnimationDelegate:self];
        [UIView setAnimationDidStopSelector:@selector(showHideDidStop:finished:context:)];

        // Make the animatable changes.
        // _leftUiView.alpha = 1.0;
        // _rightUiView.alpha = 0.0;


        // Transition Direction
        _rightUiView.frame = CGRectMake(100, 0, 500, 500);

        // Commit the changes and perform the animation.
        [UIView commitAnimations];
    }
    else {

        UIButton * myButton = sender;
        NSLog(@"did call arrive to taggleUIViews function by UIBotton:[%@], but it did not run!",myButton);

    }


}
- (void)showHideDidStop:(NSString *)animationID finished:(NSNumber *)finished context:(void *)context {
    /*
     Author: Kian D.RAd
     Date:   Jun 30th 2017
     README: This is a delegate like method that informs me, when the transition or 
     animation have been completed. So based on this accurately take the next step */

    // Set book value to false, so the progam knows that the transition was finished.
    // This is for internal use, if you wanna use publicly use, the Objective C method.
     animationIsInProgress  = false;

    // Test Animation
    [UIView beginAnimations:@"ShowHideView2" context:nil];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseOut];
    [UIView setAnimationDuration:0.25];
    [UIView setAnimationDelay:0.5];

    //    _rightUiView.alpha = 1.0;
    _rightUiView.frame = CGRectMake(0, 0, 500, 500);

    [UIView commitAnimations];


}


@end
