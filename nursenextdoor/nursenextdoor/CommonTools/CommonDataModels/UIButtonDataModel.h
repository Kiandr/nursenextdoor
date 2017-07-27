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
@interface UIButtonDataModel : NSObject//UIControl <UIButtonDataModelControllerDelegate>

typedef struct {
    /*
     Author: Kian D.Rad
     Date: July 23rd 2017
     README: Use this object to build the datamodel and pass values to instructor with datamodel.
     */
}UIButtonDataModelStruct;

/*
 Public properties
 */
@property (retain, nonatomic) id<UIButtonDataModelControllerDelegate> delegate;
@property (strong, nonatomic) NSString * titleString;
@property (strong, nonatomic) UIButton * uiButtonReturnObject;
@property (retain, nonatomic) id reciverClass;
// This is the right size of the UIVIew that should be followed;
// UIButton checkIn
@property (nonatomic,assign)  CGFloat  modelFrameOriginex;
@property (nonatomic,assign)  CGFloat  modelFrameOriginey;
@property (nonatomic,assign)  CGFloat  modelFrameSizeHeight;
@property (nonatomic,assign)  CGFloat  modelFrameSizeWidth;
@property (nonatomic,strong)  UIColor  *modelFrameBackGroundColor;
@property (nonatomic,strong)  NSString *modelTitleString;





/*
 Author: Kian D.Rad
 Date: July 24rd 2017
 README: When the button is initated, the UIBotton also correlated to an UIView.
 */
@property (strong, nonatomic) UIView *uiViewUiButto;


/*
 Inits with Datamodel
 */

-(instancetype) initWithDataModel: (UIButtonDataModel*) model;



-(instancetype) initWithType:(uiVIewTypesStruct) type AndCallbackClassIs:(id) modelClassCallBack AlsoSelectorMethodIs :(id) callBackFunctionUIButtonDataModel;


@end


#endif /* UIButtonDataModel_h */
