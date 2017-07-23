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



- (instancetype) initWithSlidingUIViewDataModel {

/*
 Author: Kian D.Rad
 Date:   Jun 29th 2017
 ReadMe: This function will initalize three UIVIews, master, left and right. 
        The master contains a function to toggle, and the two will transtiion.
 */


    self = [super init];
    if (self) {

        _slidingUIViewDataModel = [[SlidingUIViewDataModel alloc]initWithSlidingUIViewDataModel:_slidingUIViewDataModel];
        _mainPreviewScreenUIViewInteractionEntity = [[MainPreviewScreenUIViewInteractionEntity alloc]initWithMainPreviewScreenUIViewInteractionEntityWithModel:_mainPreviewScreenUIViewInteractionEntity AndWithSlidingUIViewDataModel:_slidingUIViewDataModel];
        [_slidingUIViewDataModel.templateOfMasterUIView addSubview:_mainPreviewScreenUIViewInteractionEntity.uiViewButtonHolderFrame];
        _uIViewNNDBar = [[UIViewNNDBar alloc] initWithDataModel:_uIViewNNDBar];
        _masterUIViewCLass = [[MasterUIViewCLass alloc] initWithMasterUIViewDataStructureApplicationUIView];
        [_masterUIViewCLass.mainPewviewScreenUIView insertSubview:_slidingUIViewDataModel.templateOfMasterUIView atIndex:1];
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
