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
                _logoUiButtonFrameOriginey   = _slidingUIViewDataModelTemplateOfMasterUIViewFrameOriginey;
                _logoUiButtonFrameSizeHeight = _slidingUIViewDataModelTemplateOfMasterUIViewFrameSizeHeight;
                _logoUiButtonFrameSizeWidth  = _slidingUIViewDataModelTemplateOfMasterUIViewFrameSizeWidth;


                // UIView inside NND menu bar
                _uIViewButtonDataModelFrameOriginex   = _slidingUIViewDataModelTemplateOfMasterUIViewFrameOriginex;
                _uIViewButtonDataModelFrameOriginey   = _slidingUIViewDataModelTemplateOfMasterUIViewFrameOriginey +( [[UIApplication sharedApplication] statusBarFrame].size.height + _logoUiButtonFrameSizeHeight);
                _uIViewButtonDataModelFrameSizeHeight =  windowView.frame.size.height - ( [[UIApplication sharedApplication] statusBarFrame].size.height + _logoUiButtonFrameSizeHeight);
                _uIViewButtonDataModelFrameSizeWidth  = _slidingUIViewDataModelTemplateOfMasterUIViewFrameSizeWidth;
                
                

            _returnUIViewFrameWorkModel = self;
        }
        
        
        

    }
    return self;
}
@end
