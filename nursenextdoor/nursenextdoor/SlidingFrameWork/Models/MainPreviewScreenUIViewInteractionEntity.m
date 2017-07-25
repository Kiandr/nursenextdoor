//
//  MainPreviewScreenUIViewInteractionEntity.m
//  nursenextdoor
//
//  Created by Kian Davoudi-Rad on 2017-07-07.
//  Copyright © 2017 Kian Davoudi-Rad. All rights reserved.
//


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "MainPreviewScreenUIViewInteractionEntity.h"

@implementation  MainPreviewScreenUIViewInteractionEntity: NSObject

- (instancetype)init {
    self = [super init];
    if (self) {


    }
    return self;
}



- (instancetype) initWithMainPreviewScreenUIViewInteractionEntityWithModel:(MainPreviewScreenUIViewInteractionEntity*)model AndWithSlidingUIViewDataModel: (SlidingUIViewDataModel*)slidingUIViewDataModelIncomingModel{
    self = [super init];
    if (self) {


        _bringOnSlidingMenueUIButton = [[UIButton alloc] initWithFrame:CGRectMake(0,0,slidingUIViewDataModelIncomingModel.templateOfMasterUIView.frame.size.width,50)];
        _uiViewButtonHolderFrame = [[UIView alloc]initWithFrame:CGRectMake(0,0,slidingUIViewDataModelIncomingModel.templateOfMasterUIView.frame.size.width,50)];

        [_bringOnSlidingMenueUIButton addTarget:slidingUIViewDataModelIncomingModel action:@selector(callBackFunctionButton:) forControlEvents:UIControlEventTouchDown];
        [_bringOnSlidingMenueUIButton setTitle:@"SlideUp" forState:UIControlStateNormal];
        [_bringOnSlidingMenueUIButton  setExclusiveTouch:YES];
        [_bringOnSlidingMenueUIButton  backgroundImageForState:UIControlStateNormal];
        [_bringOnSlidingMenueUIButton setBackgroundColor:[UIColor redColor]];
        [_uiViewButtonHolderFrame addSubview:_bringOnSlidingMenueUIButton];

        
    }
    return self;
}


@end

