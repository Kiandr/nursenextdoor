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
#import "SlideViewModel.h"
@import Firebase;
@import GoogleSignIn;

@class MainUIViewController;

@interface MainUIViewController : UIView <UITableViewDelegate, UITableViewDataSource>

// Properties

@property (nonatomic, strong) UITableView*              uITableViewComponent;
@property (nonatomic, strong) UIColor*                  nNDBrandColour;
@property (nonatomic, strong) UIViewFrameWorkModel*     frameWorkModel;
@property (nonatomic, strong) UIDatePicker* UIDatePickerGlobarlVar;
@property (nonatomic, strong) SlideViewModel* slideViewModel;
@property (nonatomic, strong) UIView* masterView;


// Main function available to viewController to deploy assets
- (id)      init;
//- (UIView*) buildAViewAndLoadIntoMainViewParameteizedAndDatePicker;
//- (void)    callBackFunctionFromButton:(NSString*) someInput;
//- (void)    buildAndLoadUITableView;
//- (UIView*) buildFirstPageViewAddGoogleSingInButton;
//- (UIView*) buildUserProfile;
- (UIView*)  mainViewInitMultiScreen;
- (instancetype)initWithSlideViewModel;
-(void) loadUserProfileView;




@end
