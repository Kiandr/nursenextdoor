//
//  UIViewManager.h
//  CallMe
//
//  Created by Kian Davoudi-Rad on 2017-03-16.
//  Copyright © 2017 Kian Davoudi-Rad. All rights reserved.
//
#import<Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "UIViewManagerProtocol.h"
#import "UIViewFrameWorkModel.h"
@import Firebase;
@import GoogleSignIn;

@class UIViewManager;

@interface UIViewManager : UIView <UITableViewDelegate, UITableViewDataSource>

// Properties

@property (nonatomic, strong) UITableView*              uITableViewComponent;
@property (nonatomic, strong) UIColor*                  nNDBrandColour;
@property (nonatomic, strong) UIViewFrameWorkModel*     frameWorkModel;
@property (nonatomic, strong) UIDatePicker* UIDatePickerGlobarlVar;



// Main function available to viewController to deploy assets
- (id)      init;
- (UIView*) buildAViewAndLoadIntoMainViewParameteizedAndDatePicker;
- (void)    callBackFunctionFromButton:(NSString*) someInput;
- (void)    buildAndLoadUITableView;
- (UIView*) buildFirstPageViewAddGoogleSingInButton;
- (UIView*) buildUserProfile;



@end
