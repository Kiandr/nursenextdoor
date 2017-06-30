//
//  UIViewServices.h
//  nursenextdoor
//
//  Created by Kian Davoudi-Rad on 2017-06-28.
//  Copyright © 2017 Kian Davoudi-Rad. All rights reserved.
//

#ifndef UIViewServices_h
#define UIViewServices_h

/*
 Author: Kian D.Rad
 Date;   July 28th 2017
 README: This will be a srvice layer,
 where dynamic UIVIew swapping,
 and building will take place.
 */

#import <Foundation/Foundation.h>
#import "UIViewManagerProtocol.h"
#import "UIViewFrameWorkModel.h"
#import "SlideViewModel.h"
@import Firebase;
@import GoogleSignIn;

@class UIViewServices;

@interface UIViewServices:NSObject
// Properties

@property (nonatomic, strong) UITableView*              uITableViewComponent;
@property (nonatomic, strong) UIColor*                  nNDBrandColour;
@property (nonatomic, strong) UIViewFrameWorkModel*     frameWorkModel;
@property (nonatomic, strong) UIDatePicker* UIDatePickerGlobarlVar;
@property (nonatomic, strong) SlideViewModel* slideViewModel;
@property (nonatomic, strong) UIView* masterView;


// Main function available to viewController to deploy assets
- (id)      init;

- (UIView*)  mainViewInitMultiScreen;

- (instancetype)initWithSlideViewModel;

- (void) loadUserProfileView;

- (UIView*) mainUIViewHasBeenInitalizedManagerRfferenceIsAvaiable;



@end


#endif /* UIViewServices_h */
