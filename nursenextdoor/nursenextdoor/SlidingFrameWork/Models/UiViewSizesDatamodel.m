//
//  UiViewSizesDatamodel.m
//  nursenextdoor
//
//  Created by Kian Davoudi-Rad on 2017-07-25.
//  Copyright © 2017 Kian Davoudi-Rad. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "UiViewSizesDatamodel.h"


@implementation UiViewSizesDatamodel

- (instancetype)init {
    self = [super init];
    if (self) {


    }
    return self;
}


- (instancetype)initDefaultModel {
    self = [super init];
    if (self) {

        // https://drive.google.com/file/d/0B1kNDgdfL1swZnBoWEFqRWR5aFE/view?usp=sharing
        /*
         Author: Kian D.Rad
         Date:  July 25th 2017
         ReadMe: Here is the desing, please visit the link above. This class will take care of the sizes.

         */

        self = [super init];
        if (self) {

            UIWindow* windowView = [UIApplication sharedApplication].delegate.window;

            // UIVIew TemplateHolder
            _slidingUIViewDataModelTemplateOfMasterUIViewFrameOriginex   = windowView.frame.origin.x;
            _slidingUIViewDataModelTemplateOfMasterUIViewFrameOriginey   = windowView.frame.origin.y +    ([[UIApplication sharedApplication] statusBarFrame].size.height);
            _slidingUIViewDataModelTemplateOfMasterUIViewFrameSizeHeight = windowView.frame.size.height - ([[UIApplication sharedApplication] statusBarFrame].size.height);
            _slidingUIViewDataModelTemplateOfMasterUIViewFrameSizeWidth  = windowView.frame.size.width;


            // UIButton Logo
            _logoUiButtonFrameOriginex   = _slidingUIViewDataModelTemplateOfMasterUIViewFrameOriginex;
            _logoUiButtonFrameOriginey   = windowView.frame.size.height-(windowView.frame.size.height/20); //([[UIApplication sharedApplication] statusBarFrame].size.height);
            _logoUiButtonFrameSizeHeight = windowView.frame.size.height/20;
            _logoUiButtonFrameSizeWidth  = _slidingUIViewDataModelTemplateOfMasterUIViewFrameSizeWidth;
            _logoUiButtonColor = [UIColor redColor];


            // UIVIew to PermenantConnectionToSlidingUIViewModel
            _uiviewPermenantConnectionToSlidingUIViewModelFrameOriginex = windowView.frame.origin.x;
            _uiviewPermenantConnectionToSlidingUIViewModelFrameOriginey = windowView.frame.origin.y;
            _uiviewPermenantConnectionToSlidingUIViewModelFrameSizeHeight = windowView.frame.size.height - _uiviewPermenantConnectionToSlidingUIViewModelFrameOriginey;
            _uiviewPermenantConnectionToSlidingUIViewModelFrameSizeWidth =  windowView.frame.size.width;
            _uiviewPermenantConnectionToSlidingUIViewModelBackGroundColor = [UIColor whiteColor]; // findme

            // UIView inside NND menu bar
            _uIViewButtonDataModelFrameOriginex   = _slidingUIViewDataModelTemplateOfMasterUIViewFrameOriginex;
            _uIViewButtonDataModelFrameOriginey   = _slidingUIViewDataModelTemplateOfMasterUIViewFrameOriginey;
            _uIViewButtonDataModelFrameSizeHeight =  windowView.frame.size.height - ( [[UIApplication sharedApplication] statusBarFrame].size.height + _logoUiButtonFrameSizeHeight);
            _uIViewButtonDataModelFrameSizeWidth  = _slidingUIViewDataModelTemplateOfMasterUIViewFrameSizeWidth;


            //_templateOfMasterUIView
            _templateOfMasterUIViewFrameOriginex   = windowView.frame.origin.x;
            _templateOfMasterUIViewlFrameOriginey  = windowView.frame.origin.y;
            _templateOfMasterUIViewFrameSizeHeight = windowView.frame.size.height;
            _templateOfMasterUIViewlFrameSizeWidth = windowView.frame.size.width;
            _templateOfMasterUIViewBackGroundColor = [UIColor greenColor];

            //_mainPewviewScreenUIView
            _mainPewviewScreenUIViewFrameOriginex = windowView.frame.origin.x;
            _mainPewviewScreenUIViewFrameOriginey = windowView.frame.origin.y;
            _mainPewviewScreenUIViewFrameSizeHeight = windowView.frame.size.height;
            _mainPewviewScreenUIViewFrameSizeWidth =  windowView.frame.size.width;
            _mainPewviewScreenUIViewBackGroundColor = [UIColor whiteColor];


            // SlideUpLocation
            _uiviewPermenantConnectionToSlidingUIViewModelSlideUpLocationFrameOriginex = windowView.frame.origin.x;
            _uiviewPermenantConnectionToSlidingUIViewModelSlideUpLocationFrameOriginey = windowView.frame.origin.y-50;
            _uiviewPermenantConnectionToSlidingUIViewModelSlideUpLocationFrameSizeHeight = windowView.frame.size.height - _uiviewPermenantConnectionToSlidingUIViewModelFrameOriginey;
            _uiviewPermenantConnectionToSlidingUIViewModelSlideUpLocationFrameSizeWidth =  windowView.frame.size.width;
            _uiviewPermenantConnectionToSlidingUIViewModelSlideUpLocationBackGroundColor = [UIColor clearColor];







            // CheckInScreen UIVIew
            _checkInUIViewModelFrameOriginex = _mainPewviewScreenUIViewFrameOriginex;
            _checkInUIViewModelFrameOriginey = _mainPewviewScreenUIViewFrameOriginey;
            _checkInUIViewModelFrameSizeHeight = _mainPewviewScreenUIViewFrameSizeHeight;
            _checkInUIViewModelFrameSizeWidth = _mainPewviewScreenUIViewFrameSizeWidth;
            _checkIUIViewModelBackGroundColor = [UIColor clearColor];


            // CheckIn UIButton
            /*
             _Localize.String
             https://stackoverflow.com/questions/35056397/ios-applications-localization-strings-file-name-change
             */
            _checkInButtonUIViewModelFrameOriginex = 0;
            _checkInButtonUIViewModelFrameOriginey = windowView.frame.size.height-50; // findme
            _checkInButtonUIViewModelFrameSizeHeight = 50; // findme
            _checkInButtonUIViewModelFrameSizeWidth = 100;
            _checkInButtonUIViewModelBackGroundColor = [UIColor greenColor];
            _checkInButtonUIViewModelTitleString = NSLocalizedString(@"checkInButtonUIViewModelTitleString", nil);




            _homeButtonUIViewModelFrameOriginex = _checkInButtonUIViewModelFrameSizeWidth;
            _homeButtonUIViewModelFrameOriginey = _checkInButtonUIViewModelFrameOriginey;
            _homeButtonUIViewModelFrameSizeHeight = _checkInButtonUIViewModelFrameSizeHeight;
            _homeButtonUIViewModelFrameSizeWidth = 100;
            _homeButtonUIViewModelBackGroundColor = [UIColor blueColor];
            _homeButtonUIViewModelTitleString = NSLocalizedString(@"homeButtonUIViewModelTitleString", nil);



            // Home UIButton
            

            // Home UIButton location of button on the screen

            // Help UIBotton location of button on the screen






            
            
            _returnUIViewFrameWorkModel = self;
        }
        
        
        
        
    }
    return self;
}
@end
