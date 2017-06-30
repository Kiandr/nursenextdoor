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


    if (!animationIsInProgress){
        animationIsInProgress  = true;

    UIButton * myButton = sender;

    NSLog(@"did call the function");

    [UIView beginAnimations:@"ShowHideView" context:nil];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseIn];
    [UIView setAnimationDuration:0.250];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationDidStopSelector:@selector(showHideDidStop:finished:context:)];

    // Make the animatable changes.
    // _leftUiView.alpha = 1.0;
    // _rightUiView.alpha = 0.0;




    _rightUiView.frame = CGRectMake(100, 0, 500, 500);

    // Commit the changes and perform the animation.
    [UIView commitAnimations];
    }


}
- (void)showHideDidStop:(NSString *)animationID finished:(NSNumber *)finished context:(void *)context {

    [UIView beginAnimations:@"ShowHideView2" context:nil];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseOut];
    [UIView setAnimationDuration:0.25];
    [UIView setAnimationDelay:0.5];

//    _rightUiView.alpha = 1.0;
    _rightUiView.frame = CGRectMake(0, 0, 500, 500);

    [UIView commitAnimations];

     animationIsInProgress  = false;
}


@end
