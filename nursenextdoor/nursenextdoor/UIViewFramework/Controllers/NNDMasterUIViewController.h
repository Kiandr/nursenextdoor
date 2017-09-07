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
#import "SlidingUIViewServices.h"
#import "UIViewServices.h"
#import "FirebaseGoogleController.h"
@import Firebase;
@import GoogleSignIn;

@class NNDMasterUIViewController;

@interface NNDMasterUIViewController : UIViewController

@property(strong, nonatomic) UIViewServices *service;

@property(strong, nonatomic) SlidingUIViewDataModel *slidingUIViewDataModel;

- (id) init;

@end
