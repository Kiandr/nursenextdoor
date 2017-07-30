//
//  UIViewNNDBar.m
//  nursenextdoor
//
//  Created by Kian Davoudi-Rad on 2017-07-14.
//  Copyright © 2017 Kian Davoudi-Rad. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "UIViewNNDBar.h"
#import "UiViewSizesDatamodel.h"

@implementation UIViewNNDBar

- (instancetype)init {
    self = [super init];
    if (self) {


    }
    return self;
}

- (instancetype)initWithDataModel: (UIViewNNDBar*) uiViewNNDBarIncoming AndSizesDataModel:(UiViewSizesDatamodel*) incominguiViewSizesDatamodel{
    /*
     Author: Kian D.Rad
     Date:   July 14th 2017
     README: This is the initalizer or constructor with the datamodel. 
     ToDo:
     */

    self = [super init];
    if (self) {
            _uiViewSizesDatamodel = incominguiViewSizesDatamodel;

            _uiVIewNNDBarView = [[UIView alloc]initWithFrame:[UIApplication sharedApplication].delegate.window.frame];
            _uiVIewNNDBarView.backgroundColor = [UIColor darkGrayColor];

        /*
         Author: Kian D.Rad
         Date:   July 14th 2017
         README: This class build button with an incomind datamodel
         ToDO:
         */



        _uiButtonHome = [[UIButtonDataModel alloc]initWithXModel:self AndType:uiViewStructTypeCheckIn];
        _uiButtonChckIn = [[UIButtonDataModel alloc]initWithXModel:self AndType:uiViewStructTypeHome];

        _uIViewNNDBar = self;



        [_uIViewNNDBar.uiVIewNNDBarView addSubview: _uiButtonHome.uiButtonReturnObject];
        [_uIViewNNDBar.uiVIewNNDBarView addSubview: _uiButtonChckIn.uiButtonReturnObject];


        /*
         Author: Kian D.Rad
         Date: July 24th 2017
         README: 
            Initalize the UIView the permenant connection to the slidingUIViewModel. 
            This UIView, should be animated, dynamically to bring it any existing uiview that reslides in this class. 
            Those uiviews are part of the Uibutton. 
        */

        _uiviewPermenantConnectionToSlidingUIViewModel = [[UIView alloc]initWithFrame:CGRectMake(_uiViewSizesDatamodel.uiviewPermenantConnectionToSlidingUIViewModelFrameOriginex,
                                                                                                 _uiViewSizesDatamodel.uiviewPermenantConnectionToSlidingUIViewModelFrameOriginey,
                                                                                                 _uiViewSizesDatamodel.uiviewPermenantConnectionToSlidingUIViewModelFrameSizeWidth,
                                                                                                 _uiViewSizesDatamodel.uiviewPermenantConnectionToSlidingUIViewModelFrameSizeHeight)];
        [_uiviewPermenantConnectionToSlidingUIViewModel setBackgroundColor:_uiViewSizesDatamodel.uiviewPermenantConnectionToSlidingUIViewModelBackGroundColor];


    }
    return self;
}

- (UIView*)GetterUIViewNNDBar{

/*
 Author: Kian D.Rad
 Date:   July 14th 2017
 README: This is the getter, nothing special, only gets the model inizialized.
 ToDO:
 */

    return _uiVIewNNDBarView;


}

-(void) callBackFunctionUIButtonDataModel:(UIButton*) sender{
    /*
     Author: Kian D.Rad
     Date:   July 23th 2017
     README:    In this function I know which button was selected by user on the UIViewNNDBar. 
        Now, I have to load the appropriate UIView into _currentButtonSelector or a common UIView, 
        which behaves as a pointer. The UIView should have been already initated. And then you ask 
        UIView animation to buring that UIView into the template holder.
     ToDO:
        1- July 25th 2017: load the Home "UIView", keep reffernce to the componetns.
        2- July 28th 2017: Based on the title of the button, we perfrom spesific animation for each screen.
     */


    if ([sender.currentTitle  isEqual: NSLocalizedString(@"checkInButtonUIViewModelTitleString", nil)])
    {

        // retur back the PermenantConnection back down and put that uIView on top of others.
        NSLog(@"%@",sender.currentTitle);
        [self CheckInScreenupdateAnimation];
    }

    else if ([sender.currentTitle  isEqual: NSLocalizedString(@"homeButtonUIViewModelTitleString", nil)])
    {
        NSLog(@"%@",sender.currentTitle);
         [self HomeScreenupdateAnimation];
    }

}

- (void)CheckInScreenupdateAnimation{


    /*
     Author: Kian D.Rad
     Date:   July 28th 2017
     README: Load CheckIn UIVIew on top and bring back the permenant Screen down
     ToDO:
     */

    [UIView animateWithDuration:0.25
                          delay:0.0
                        options:(UIViewAnimationCurveEaseInOut|UIViewAnimationOptionAllowUserInteraction)
                     animations:^{
                         [UIView setAnimationDelegate:self];

                         // This line also calls an other function upon completion too.
                         //[UIView setAnimationDidStopSelector:@selector(goDown:finished:context:)];
                         [_uiviewPermenantConnectionToSlidingUIViewModel setFrame:CGRectMake(_uiViewSizesDatamodel.uiviewPermenantConnectionToSlidingUIViewModelFrameOriginex,
                                                                                             _uiViewSizesDatamodel.uiviewPermenantConnectionToSlidingUIViewModelFrameOriginey,
                                                                                             _uiViewSizesDatamodel.uiviewPermenantConnectionToSlidingUIViewModelFrameSizeWidth,
                                                                                             _uiViewSizesDatamodel.uiviewPermenantConnectionToSlidingUIViewModelFrameSizeHeight)];

                      //   [_uiviewPermenantConnectionToSlidingUIViewModel setBackgroundColor:[UIColor blackColor]];

// findme

                     //    [_uiviewPermenantConnectionToSlidingUIViewModel willRemoveSubview:_uiButtonHome.uiViewButtonDataModel];
                         [_uiviewPermenantConnectionToSlidingUIViewModel insertSubview:_uiButtonChckIn.uiViewButtonDataModel atIndex:0];
                      //   [_uiviewPermenantConnectionToSlidingUIViewModel insertSubview:_uiButtonHome.uiViewButtonDataModel atIndex:1];

                     }completion:^(BOOL finished){
                         NSLog(@"Face Up done");

                     }];
    
    
}

- (void)HomeScreenupdateAnimation{


    /*
     Author: Kian D.Rad
     Date:   July 28th 2017
     README: Load CheckIn UIVIew on top and bring back the permenant Screen down
     ToDO:
     */

    [UIView animateWithDuration:0.25
                          delay:0.0
                        options:(UIViewAnimationCurveEaseInOut|UIViewAnimationOptionAllowUserInteraction)
                     animations:^{
                         [UIView setAnimationDelegate:self];

                         // This line also calls an other function upon completion too.
                         //[UIView setAnimationDidStopSelector:@selector(goDown:finished:context:)];
                         [_uiviewPermenantConnectionToSlidingUIViewModel setFrame:CGRectMake(_uiViewSizesDatamodel.uiviewPermenantConnectionToSlidingUIViewModelFrameOriginex,
                                                                                             _uiViewSizesDatamodel.uiviewPermenantConnectionToSlidingUIViewModelFrameOriginey,
                                                                                             _uiViewSizesDatamodel.uiviewPermenantConnectionToSlidingUIViewModelFrameSizeWidth,
                                                                                             _uiViewSizesDatamodel.uiviewPermenantConnectionToSlidingUIViewModelFrameSizeHeight)];

                    //     [_uiviewPermenantConnectionToSlidingUIViewModel setBackgroundColor:[UIColor greenColor]];

                    //     [_uiviewPermenantConnectionToSlidingUIViewModel insertSubview:uiButtonChckIn.uiViewButtonDataModel atIndex:1];
                         [_uiviewPermenantConnectionToSlidingUIViewModel insertSubview:_uiButtonHome.uiViewButtonDataModel atIndex:0];
                      //   [_uiviewPermenantConnectionToSlidingUIViewModel willRemoveSubview:uiButtonChckIn.uiViewButtonDataModel];

                     }completion:^(BOOL finished){
                         NSLog(@"Face Up done");
                         
                     }];
    
    
}

@end
