//
//  UIButtonDataModel.h
//  nursenextdoor
//
//  Created by Kian Davoudi-Rad on 2017-07-19.
//  Copyright © 2017 Kian Davoudi-Rad. All rights reserved.
//

#ifndef UIButtonDataModel_h
#define UIButtonDataModel_h

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#import "UiViewSizesDatamodel.h"

@protocol UIButtonDataModelControllerDelegate <NSObject>

-(void) callBackFunctionUIButtonDataModel:(id) sender;

@end


@class UIButtonDataModel;
@interface UIButtonDataModel : NSObject

@property (retain, nonatomic) id<UIButtonDataModelControllerDelegate> delegate;

@property (strong, nonatomic) id backClass;

@property (strong, nonatomic) UIView   *uiViewButtonDataModel;

@property (strong, nonatomic) UIButton *uiButtonReturnObject;

@property (assign, nonatomic) uiVIewTypesStruct* typeOfButtonIs;

@property (strong, nonatomic) UiViewSizesDatamodel *sizes;

-(instancetype) initWithDataModel: (UIButtonDataModel*) model;

-(instancetype) initWithType:(uiVIewTypesStruct) type AndCallbackClassIs:(id) modelClassCallBack AlsoSelectorMethodIs :(id) callBackFunctionUIButtonDataModel;

- (instancetype)initWithXModel:(id) model AndType: (uiVIewTypesStruct) type;

@end


#endif /* UIButtonDataModel_h */
