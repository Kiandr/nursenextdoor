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


@property (nonatomic, strong) UiViewSizesDatamodel * returnUIViewFrameWorkModel;

@end

#endif /* UiViewSizesDatamodel_h */
