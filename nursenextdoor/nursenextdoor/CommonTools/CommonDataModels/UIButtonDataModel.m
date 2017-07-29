 //
//  UIButtonDataModel.m
//  nursenextdoor
//
//  Created by Kian Davoudi-Rad on 2017-07-19.
//  Copyright © 2017 Kian Davoudi-Rad. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "UIButtonDataModel.h"

@implementation UIButtonDataModel


- (instancetype)init {
    self = [super init];
    if (self) {


    }
    return self;
}




-(instancetype) initWithDataModel: (UIButtonDataModel*) model{
/*
 Author: 
 Date: 
 README: 
 ToDo: 
 1- initalize the only uibutton so others can have access to it.  DONE
 2- Once the initalize uses the model to set properties of the UIButton
 */


    self = [super init];
    if (self) {

        _uiButtonReturnObject =[[UIButton alloc]initWithFrame:CGRectMake(0, 600 , 100, 100)];
        [_uiButtonReturnObject setTitle:@"checkIn" forState:UIControlStateNormal];
        [_uiButtonReturnObject setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
    //    [_uiButtonReturnObject addTarget:model.reciverClass action:@selector(callBackFunctionUIButtonDataModel:) forControlEvents:UIControlEventTouchUpInside];
        [_uiButtonReturnObject setBackgroundColor:[UIColor blueColor]];

        /*
         Author: Kian D.Rad
         Date: July 24th 2017
         README: UIView associated to the UIButton

         */



    }
    return self;

};


- (instancetype)initWithXModel:(id) model AndType: (uiVIewTypesStruct) type{
    self = [super init];
    if (self) {


        // Eveything every size is here, all static, and centrlized, consume it on your demand

        _uiViewButtonDataModel= [[UIView alloc]init];

        _uiButtonReturnObject = [[UIButton alloc]init];

        _sizes = [[UiViewSizesDatamodel alloc]initDefaultModel];


        // build a lable TEST FINDME
        UILabel *nextVisist= [[UILabel alloc] initWithFrame:CGRectMake(0,0, 500, 500)];
        [_uiViewButtonDataModel addSubview:nextVisist];


        _backClass = model;

        switch (type) {
            case  uiViewStructTypeCheckIn:
                {
                    [_uiButtonReturnObject setTitle:_sizes.checkInButtonUIViewModelTitleString forState:UIControlStateNormal];
                    [_uiButtonReturnObject setBackgroundColor:_sizes.checkInButtonUIViewModelBackGroundColor];
                    [_uiButtonReturnObject setFrame:CGRectMake(_sizes.checkInButtonUIViewModelFrameOriginex,
                                                                         _sizes.checkInButtonUIViewModelFrameOriginey,
                                                                         _sizes.checkInButtonUIViewModelFrameSizeWidth,
                                                                         _sizes.checkInButtonUIViewModelFrameSizeHeight)];

                    [_uiButtonReturnObject addTarget:model action:@selector(callBackFunctionUIButtonDataModel:) forControlEvents:UIControlEventTouchUpInside];

                    // I built the UIButton but not the uiview LOL
                    [_uiViewButtonDataModel setFrame:CGRectMake(_sizes.checkInUIViewModelFrameOriginex,
                                                                _sizes.checkInUIViewModelFrameOriginey,
                                                                _sizes.checkInUIViewModelFrameSizeWidth,
                                                                _sizes.checkInUIViewModelFrameSizeHeight)];

                    [_uiViewButtonDataModel setBackgroundColor:[UIColor darkGrayColor]];

                    // FINDME
                    // TEST

                    [nextVisist setText:@"This is CHECKINT page "];
                }

                break;

            case  uiViewStructTypeHelp:
                {

                    // TODO: Not set yet do the samehere
                }
                break;


            case  uiViewStructTypeHome:
                {

                    [_uiButtonReturnObject setTitle:_sizes.homeButtonUIViewModelTitleString forState:UIControlStateNormal];
                    [_uiButtonReturnObject setBackgroundColor:_sizes.homeButtonUIViewModelBackGroundColor];
                    [_uiButtonReturnObject setFrame:CGRectMake(_sizes.homeButtonUIViewModelFrameOriginex,
                                                               _sizes.homeButtonUIViewModelFrameOriginey,
                                                               _sizes.homeButtonUIViewModelFrameSizeWidth,
                                                               _sizes.homeButtonUIViewModelFrameSizeHeight)];

                    [_uiButtonReturnObject addTarget:model action:@selector(callBackFunctionUIButtonDataModel:) forControlEvents:UIControlEventTouchUpInside];

                    [nextVisist setText:@"This is HOME page "];
                    [_uiViewButtonDataModel setBackgroundColor:[UIColor lightGrayColor]];
                    // I built the UIButton but not the uiview LOL
                    [_uiViewButtonDataModel setFrame:CGRectMake(_sizes.checkInUIViewModelFrameOriginex,
                                                                _sizes.checkInUIViewModelFrameOriginey,
                                                                _sizes.checkInUIViewModelFrameSizeWidth,
                                                                _sizes.checkInUIViewModelFrameSizeHeight)];

                }
                break;

            default:
                break;
        }




    }
    return self;
}



@end
