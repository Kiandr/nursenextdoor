//
//  GoogleController.h
//  nursenextdoor
//
//  Created by Kian Davoudi-Rad on 2017-06-15.
//  Copyright © 2017 Kian Davoudi-Rad. All rights reserved.
//

#ifndef GoogleController_h
#define GoogleController_h
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>
#import <UIKit/UIKit.h>
#import "MainUIViewController.h"
@import Firebase;
@import GoogleSignIn;

@interface FirebaseGoogleController : UIViewController<GIDSignInUIDelegate>
@property(nonatomic, strong) UIViewController* mainViewController;

@end



#endif /* GoogleController_h */
