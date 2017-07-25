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

        _tapGesturePropery = [[UIGestureRecognizer alloc] initWithTarget:self action:@selector(handleSingleTap:)];
        _bringOnSlidingMenueUIButton = [[UIButton alloc] initWithFrame:CGRectMake(0,0,slidingUIViewDataModelIncomingModel.templateOfMasterUIView.frame.size.width,50)];
        _uiViewButtonHolderFrame = [[UIView alloc]initWithFrame:CGRectMake(0,0,slidingUIViewDataModelIncomingModel.templateOfMasterUIView.frame.size.width,50)];

        // callBackInAnOtherClass
        [_bringOnSlidingMenueUIButton addTarget:slidingUIViewDataModelIncomingModel action:@selector(callBackFunctionButton:) forControlEvents:UIControlEventTouchDown];
        // CallbackInThisClass
        //[_bringOnSlidingMenueUIButton addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventAllEvents];
        //[_bringOnSlidingMenueUIButton setFrame:CGRectMake(0, 0, 10, 10)];
        [_bringOnSlidingMenueUIButton setTitle:@"SlideUp" forState:UIControlStateNormal];
        [_bringOnSlidingMenueUIButton  setTitle:@"clicked!" forState:UIControlStateSelected];
        [_bringOnSlidingMenueUIButton  setExclusiveTouch:YES];
        [_bringOnSlidingMenueUIButton  backgroundImageForState:UIControlStateNormal];
        _bringOnSlidingMenueUIButton.backgroundColor =  [UIColor redColor];

        slidingUIViewDataModelIncomingModel.templateOfMasterUIView;


        [_uiViewButtonHolderFrame addSubview:_bringOnSlidingMenueUIButton];
     //    _mainPreviewScreenUIViewInteractionEntity = self;
       // model = self;
        
    }
    return self;
}

//The event handling method
- (void)handleSingleTap:(UITapGestureRecognizer *)recognizer
{
    CGPoint location = [recognizer locationInView:[recognizer.view superview]];

    //Do stuff here...
}


-(void) buttonClicked:(UIButton*)sender
{
    NSLog(@"you clicked on button %ld", (long)sender);
}

@end

