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
                _slidingUIViewDataModelTemplateOfMasterUIViewFrameOriginey   = windowView.frame.origin.y +([[UIApplication sharedApplication] statusBarFrame].size.height);
                _slidingUIViewDataModelTemplateOfMasterUIViewFrameSizeHeight = windowView.frame.size.height -([[UIApplication sharedApplication] statusBarFrame].size.height);
                _slidingUIViewDataModelTemplateOfMasterUIViewFrameSizeWidth  = windowView.frame.size.width;


                // UIButton Logo
                _logoUiButtonFrameOriginex   = _slidingUIViewDataModelTemplateOfMasterUIViewFrameOriginex;
                _logoUiButtonFrameOriginey   = windowView.frame.size.height -(windowView.frame.size.height/20);
                _logoUiButtonFrameSizeHeight = windowView.frame.size.height/20;
                _logoUiButtonFrameSizeWidth  = _slidingUIViewDataModelTemplateOfMasterUIViewFrameSizeWidth;


                // UIView inside NND menu bar
                _uIViewButtonDataModelFrameOriginex   = _slidingUIViewDataModelTemplateOfMasterUIViewFrameOriginex;
                _uIViewButtonDataModelFrameOriginey   = _slidingUIViewDataModelTemplateOfMasterUIViewFrameOriginey +( [[UIApplication sharedApplication] statusBarFrame].size.height + _logoUiButtonFrameSizeHeight);
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


            _returnUIViewFrameWorkModel = self;
        }
        
        
        

    }
    return self;
}
@end
