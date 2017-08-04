//
//  SlidingUIViewServices.h
//  nursenextdoor
//
//  Created by Kian Davoudi-Rad on 2017-06-29.
//  Copyright © 2017 Kian Davoudi-Rad. All rights reserved.
//

#ifndef SlidingUIViewServices_h
#define SlidingUIViewServices_h

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "SlidingUIViewDataModel.h"
#import "MainPreviewScreenUIViewInteractionEntity.h"
#import "MasterUIViewCLass.h"
#import "UiViewSizesDatamodel.h"
@class SlidingUIViewServices;

@interface SlidingUIViewServices : NSObject

@property (nonatomic, strong) MasterUIViewCLass* masterUIViewCLass;

@property (nonatomic, strong) SlidingUIViewDataModel* slidingUIViewDataModel;
// These are buttons
@property (nonatomic, strong) MainPreviewScreenUIViewInteractionEntity *mainPreviewScreenUIViewInteractionEntity;
// This is the low level bar
@property (nonatomic, strong) UIViewNNDBar *uIViewNNDBar;

// this is the right sizes for the screens, all localized collected into a single class.
@property (nonatomic, strong) UiViewSizesDatamodel *uiViewSizesDatamodel;

- (instancetype) init;
- (UIView*) getterMasterUIView; 
- (instancetype) initWithSlidingUIViewDataModel ;
@end

#endif /* SlidingUIViewServices_h */
