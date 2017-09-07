//
//  AppDelegate.h
//  nursenextdoor
//
//  Created by Kian Davoudi-Rad on 2017-06-15.
//  Copyright © 2017 Kian Davoudi-Rad. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

// add Google delegate method for Sing Sing On framework
// https://firebase.google.com/docs/auth/ios/google-signin view this page for further deatil.

@import Firebase;
@import GoogleSignIn;




@interface AppDelegate : UIResponder <UIApplicationDelegate,GIDSignInDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

// I am taking care of this in a seperate project: NNDDatabase controller.
//- (void)saveContext;


@end

