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

@protocol UIButtonDataModelControllerDelegate <NSObject>

-(void) callBackFunctionUIButtonDataModel;

@end


@class UIButtonDataModel;
@interface UIButtonDataModel : NSObject

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


/*
 Inits with Datamodel
 */

-(instancetype) initWithDataModel: (UIButtonDataModel*) model;


@end


#endif /* UIButtonDataModel_h */
