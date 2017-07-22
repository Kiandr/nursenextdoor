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
#import "UIViewNNDBarController.h"
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

        _uiButtonReturnObject =[[UIButton alloc]initWithFrame:CGRectMake(0, 500 , 200, 200)];
        [_uiButtonReturnObject setTitle:@"TestButton" forState:UIControlStateNormal];
        [_uiButtonReturnObject setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        [_uiButtonReturnObject addTarget:model.reciverClass action:@selector(callBackFunctionUIButtonDataModel) forControlEvents:UIControlEventTouchUpInside];

       // [_uiButtonReturnObject setHighlighted:YES];
        //[_uiButtonReturnObject sendActionsForControlEvents:UIControlEventTouchUpInside];
       // [_uiButtonReturnObject performSelector:@selector(setHighlighted:) withObject:NO afterDelay:0.25];

    }
    return self;

};


-(void) callBackFunctionUIButtonDataModel{
    NSLog(@"test");
}

@end
