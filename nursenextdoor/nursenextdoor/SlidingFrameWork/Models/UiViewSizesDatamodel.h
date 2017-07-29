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


typedef enum {

    uiViewStructTypeCheckIn = 0,
    uiViewStructTypeHelp = 1,
    uiViewStructTypeHome = 2

}uiVIewTypesStruct;





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





// CheckIntUiButton
@property (nonatomic,assign)  CGFloat  checkInButtonUIViewModelFrameOriginex;
@property (nonatomic,assign)  CGFloat  checkInButtonUIViewModelFrameOriginey;
@property (nonatomic,assign)  CGFloat  checkInButtonUIViewModelFrameSizeWidth;
@property (nonatomic,assign)  CGFloat  checkInButtonUIViewModelFrameSizeHeight;
@property (nonatomic,strong)  UIColor  *checkInButtonUIViewModelBackGroundColor;
@property (nonatomic,strong)  NSString *checkInButtonUIViewModelTitleString;


// CheckIntUIVIew
@property (nonatomic,assign)  CGFloat  checkInUIViewModelFrameOriginex;
@property (nonatomic,assign)  CGFloat  checkInUIViewModelFrameOriginey;
@property (nonatomic,assign)  CGFloat  checkInUIViewModelFrameSizeWidth;
@property (nonatomic,assign)  CGFloat  checkInUIViewModelFrameSizeHeight;
@property (nonatomic,strong)  UIColor  *checkIUIViewModelBackGroundColor;
@property (nonatomic,strong)  NSString *checkIUIViewModelTitleString;




// Home UIButton
@property (nonatomic,assign)  CGFloat  homeButtonUIViewModelFrameOriginex;
@property (nonatomic,assign)  CGFloat  homeButtonUIViewModelFrameOriginey;
@property (nonatomic,assign)  CGFloat  homeButtonUIViewModelFrameSizeWidth;
@property (nonatomic,assign)  CGFloat  homeButtonUIViewModelFrameSizeHeight;
@property (nonatomic,strong)  UIColor  *homeButtonUIViewModelBackGroundColor;
@property (nonatomic,strong)  NSString *homeButtonUIViewModelTitleString;

// ListOfVisists UIButton








@property (nonatomic, strong) UiViewSizesDatamodel * returnUIViewFrameWorkModel;


- (instancetype)initDefaultModel;
@end

#endif /* UiViewSizesDatamodel_h */
