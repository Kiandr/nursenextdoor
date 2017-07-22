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
#import "MainPreviewScreenUIViewInteractionEntity.h"
#import "MasterUIViewCLass.h"
@implementation SlidingUIViewServices:NSObject

bool animationIsInProgress;


#pragma Cunstroctors
- (instancetype)init {
    self = [super init];
    if (self) {

        // init SlidingUIViewDataModel it contains all UIVIews
        _slidingUIViewDataModel = [[SlidingUIViewDataModel alloc]initWithSlidingUIViewDataModel:_slidingUIViewDataModel];

        // this is the class for interaction components: it contains button and gesture
         _mainPreviewScreenUIViewInteractionEntity = [[MainPreviewScreenUIViewInteractionEntity alloc]initWithMainPreviewScreenUIViewInteractionEntityWithModel:_mainPreviewScreenUIViewInteractionEntity AndWithSlidingUIViewDataModel:_slidingUIViewDataModel];



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
- (instancetype) initWithSlidingUIViewDataModel {

/*
 Author: Kian D.Rad
 Date:   Jun 29th 2017
 ReadMe: This function will initalize three UIVIews, master, left and right. 
        The master contains a function to toggle, and the two will transtiion.
 */


    self = [super init];
    if (self) {

        // Initialize necessary components within this class with the following order.
        // Do not looss order, you need the slidingUIVIewDataModel pointer to pass to next function for refference.
        _slidingUIViewDataModel = [[SlidingUIViewDataModel alloc]initWithSlidingUIViewDataModel:_slidingUIViewDataModel];
        _mainPreviewScreenUIViewInteractionEntity = [[MainPreviewScreenUIViewInteractionEntity alloc]initWithMainPreviewScreenUIViewInteractionEntityWithModel:_mainPreviewScreenUIViewInteractionEntity AndWithSlidingUIViewDataModel:_slidingUIViewDataModel];

        [_slidingUIViewDataModel.templateOfMasterUIView addSubview:_mainPreviewScreenUIViewInteractionEntity.uiViewButtonHolderFrame];
        // Sliding view

        _uIViewNNDBar = [[UIViewNNDBar alloc] initWithDataModel:_uIViewNNDBar];
        _masterUIViewCLass = [[MasterUIViewCLass alloc] initWithMasterUIViewDataStructureApplicationUIView];




        // Pre-Build the SlidingUIView with button and interactivity options
 //       [_slidingUIViewDataModel.templateOfMasterUIView addSubview: _mainPreviewScreenUIViewInteractionEntity.bringOnSlidingMenueUIButton];
        // Build sandwitch with the layers. Priorotize layers.

      //  [_masterUIViewCLass.mainPewviewScreenUIView insertSubview:_slidingUIViewDataModel.templateOfMasterUIView atIndex:1];
        [_masterUIViewCLass.mainPewviewScreenUIView insertSubview:_uIViewNNDBar.uiVIewNNDBarView atIndex:0];





    }
    return self;


}

/*
 Author: Kian D.Rad
 Date: July 13th 2017
 README: Getters and Setter;
 */
- (UIView*) getterMasterUIView{
    /*
     Author: Kian D.Rad
     Date:   July 13th 2017
     ReadMe: Get master UIView, abstraction
     */

    //UIView *t = _slidingUIViewDataModel.masterUIViewClass.mainPewviewScreenUIView;
    //return _slidingUIViewDataModel.templateOfMasterUIView;
   return _masterUIViewCLass.mainPewviewScreenUIView;

//    return _slidingUIViewDataModel.templateOfMasterUIView ;
    //return _mainPreviewScreenUIViewInteractionEntity.uiViewButtonHolderFrame;
};

@end
