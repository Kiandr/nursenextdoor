//
//  UIViewNNDBar.m
//  nursenextdoor
//
//  Created by Kian Davoudi-Rad on 2017-07-14.
//  Copyright © 2017 Kian Davoudi-Rad. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "UIViewNNDBar.h"

@implementation UIViewNNDBar

- (instancetype)init {
    self = [super init];
    if (self) {


    }
    return self;
}

- (instancetype)initWithDataModel: (UIViewNNDBar*) uiViewNNDBarIncoming {
    /*
     Author: Kian D.Rad
     Date:   July 14th 2017
     README: This is the initalizer or constructor with the datamodel. 
     ToDo: 
        1- Inialize the UIViewModel
        2- Inject UIButton representing the number of the UIView.
     
     */

    self = [super init];
    if (self) {

            _uiVIewNNDBarView = [[UIView alloc]initWithFrame:[UIApplication sharedApplication].delegate.window.frame];
            _uiVIewNNDBarView.backgroundColor = [UIColor darkGrayColor];

        /*
         Author: Kian D.Rad
         Date:   July 14th 2017
         README: This class build button with an incomind datamodel
         ToDO:
         1- keep reffernce to the interncal class;
         2- Build all menue buttons and add to incoming class
         3- incoming class and itnernal class reffer to the same pointer


         */


        UIButtonDataModel *builder = [[UIButtonDataModel alloc]init];
        builder.reciverClass = self;

        _uiButtonHome = [[UIButtonDataModel alloc]initWithDataModel:builder];
        // Set a pointer to the self class.
        _uIViewNNDBar = self;


        [_uIViewNNDBar.uiVIewNNDBarView addSubview:_uiButtonHome.uiButtonReturnObject];
        //[_uIViewNNDBar.uiVIewNNDBarView insertSubview:_uiButtonHome.uiButtonReturnObject atIndex:0 ];

    }
    return self;
}

- (UIView*)GetterUIViewNNDBar{

/*
 Author: Kian D.Rad
 Date:   July 14th 2017
 README: This is the getter, nothing special, only gets the model inizialized.
 ToDO:
 */

    return _uiVIewNNDBarView;


}

// Call it with Self here. Or the _uiViewNNDBar
-(void)InitButtons {
//    /*
//     Author: Kian D.Rad
//     Date:   July 14th 2017
//     README: This class build button inside the bar from internal properties
//     ToDO:
//     1- Localize the stupid strings, i hate that!
//
//     */
//
//
//    // build four uibuttons with icon inject them all appropriately, no magic number though.
//    _uiButtonHome = [[UIButton alloc]init];
//    //[_uiButtonHome setTitle:buttonText forState:UIControlStateNormal];
//    [_uiButtonHome setTitle:@"Home" forState:UIControlStateNormal];
//    [_uiButtonHome setFrame:CGRectMake(100, ([[UIView alloc]initWithFrame:[UIApplication sharedApplication].delegate.window.frame].frame.size.height)-100, 100, 100)];
//    [_uiButtonHome setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
//
//    _uiButtonScheduledVisits = [[UIButton alloc]init];
//    [_uiButtonScheduledVisits setTitle:@"Scheduled Visits" forState:UIControlStateNormal];
//    [_uiButtonScheduledVisits setFrame:CGRectMake(100, 0, 100, 100)];
//    _uiButtonMap = [[UIButton alloc]init];
//    [_uiButtonMap setTitle:@"Map" forState:UIControlStateNormal];
//
//    [_uiButtonScheduledVisits setFrame:CGRectMake(200, 0, 100, 100)];
//    _uiButtonHelp = [[UIButton alloc]init];
//    [_uiButtonHelp setTitle:@"Help" forState:UIControlStateNormal];
//
//
//
//    // Add them all into the UIView
//    // [_slidingUIViewDataModel.templateOfMasterUIView insertSubview: _masterUIViewCLass.mainPewviewScreenUIView atIndex:0];
//    [_uIViewNNDBar.uiVIewNNDBarView insertSubview:_uiButtonHome atIndex:0 ];
//    [_uIViewNNDBar.uiVIewNNDBarView insertSubview:_uiButtonScheduledVisits atIndex:0 ];
//    [_uIViewNNDBar.uiVIewNNDBarView insertSubview:_uiButtonMap atIndex:0 ];
//    [_uIViewNNDBar.uiVIewNNDBarView insertSubview:_uiButtonHelp atIndex:0 ];

}

-(void) callBackFunctionUIButtonDataModel{

    NSLog(@"delgate method at -(void) callBackFunctionUIButtonDataModelControllerDelegate; worked");
}

@end
