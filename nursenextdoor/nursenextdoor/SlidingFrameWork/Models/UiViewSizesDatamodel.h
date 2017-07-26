//
//  UiViewSizesDatamodel.h
//  nursenextdoor
//
//  Created by Kian Davoudi-Rad on 2017-07-25.
//  Copyright © 2017 Kian Davoudi-Rad. All rights reserved.
//

#ifndef UiViewSizesDatamodel_h
#define UiViewSizesDatamodel_h

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol UiViewSizesDatamodelDelegate <NSObject>



@end

@class UiViewSizesDatamodel;

@interface UiViewSizesDatamodel : NSObject


@property (strong, nonatomic) id<UiViewSizesDatamodelDelegate> delegate;

// UIButton Logo
@property (nonatomic,assign)  CGFloat logoUiButtonFrameOriginex;
@property (nonatomic,assign)  CGFloat logoUiButtonFrameOriginey;
@property (nonatomic,assign)  CGFloat logoUiButtonFrameSizeHeight;
@property (nonatomic,assign)  CGFloat logoUiButtonFrameSizeWidth;
@property (nonatomic,strong) UIColor *logoUiButtonColor;


// UIVIew TemplateHolder
@property (nonatomic,assign)  CGFloat slidingUIViewDataModelTemplateOfMasterUIViewFrameOriginex;
@property (nonatomic,assign)  CGFloat slidingUIViewDataModelTemplateOfMasterUIViewFrameOriginey;
@property (nonatomic,assign)  CGFloat slidingUIViewDataModelTemplateOfMasterUIViewFrameSizeHeight;
@property (nonatomic,assign)  CGFloat slidingUIViewDataModelTemplateOfMasterUIViewFrameSizeWidth;


// UIButton Logo
@property (nonatomic,assign)  CGFloat uIViewButtonDataModelFrameOriginex;
@property (nonatomic,assign)  CGFloat uIViewButtonDataModelFrameOriginey;
@property (nonatomic,assign)  CGFloat uIViewButtonDataModelFrameSizeHeight;
@property (nonatomic,assign)  CGFloat uIViewButtonDataModelFrameSizeWidth;


//_templateOfMasterUIView
@property (nonatomic,assign)  CGFloat templateOfMasterUIViewFrameOriginex;
@property (nonatomic,assign)  CGFloat templateOfMasterUIViewlFrameOriginey;
@property (nonatomic,assign)  CGFloat templateOfMasterUIViewFrameSizeHeight;
@property (nonatomic,assign)  CGFloat templateOfMasterUIViewlFrameSizeWidth;
@property (nonatomic, strong) UIColor* templateOfMasterUIViewBackGroundColor;



@property (nonatomic,assign)  CGFloat mainPewviewScreenUIViewFrameOriginex;
@property (nonatomic,assign)  CGFloat mainPewviewScreenUIViewFrameOriginey;
@property (nonatomic,assign)  CGFloat mainPewviewScreenUIViewFrameSizeHeight;
@property (nonatomic,assign)  CGFloat mainPewviewScreenUIViewFrameSizeWidth;
@property (nonatomic,strong)  UIColor * mainPewviewScreenUIViewBackGroundColor;



// _uiviewPermenantConnectionToSlidingUIViewModel
@property (nonatomic,assign)  CGFloat uiviewPermenantConnectionToSlidingUIViewModelFrameOriginex;
@property (nonatomic,assign)  CGFloat uiviewPermenantConnectionToSlidingUIViewModelFrameOriginey;
@property (nonatomic,assign)  CGFloat uiviewPermenantConnectionToSlidingUIViewModelFrameSizeHeight;
@property (nonatomic,assign)  CGFloat uiviewPermenantConnectionToSlidingUIViewModelFrameSizeWidth;
@property (nonatomic,strong)  UIColor * uiviewPermenantConnectionToSlidingUIViewModelBackGroundColor;


// _uiviewPermenantConnectionToSlidingUIViewModel SlideUpLocation
@property (nonatomic,assign)  CGFloat uiviewPermenantConnectionToSlidingUIViewModelSlideUpLocationFrameOriginex;
@property (nonatomic,assign)  CGFloat uiviewPermenantConnectionToSlidingUIViewModelSlideUpLocationFrameOriginey;
@property (nonatomic,assign)  CGFloat uiviewPermenantConnectionToSlidingUIViewModelSlideUpLocationFrameSizeHeight;
@property (nonatomic,assign)  CGFloat uiviewPermenantConnectionToSlidingUIViewModelSlideUpLocationFrameSizeWidth;
@property (nonatomic, strong) UIColor * uiviewPermenantConnectionToSlidingUIViewModelSlideUpLocationBackGroundColor;


@property (nonatomic, strong) UiViewSizesDatamodel * returnUIViewFrameWorkModel;


- (instancetype)initDefaultModel;
@end

#endif /* UiViewSizesDatamodel_h */
