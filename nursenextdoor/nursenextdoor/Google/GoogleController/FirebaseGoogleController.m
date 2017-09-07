//
//  GoogleController.m
//  nursenextdoor
//
//  Created by Kian Davoudi-Rad on 2017-06-15.
//  Copyright © 2017 Kian Davoudi-Rad. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FirebaseGoogleController.h"
#import "Firebase.h"
#include "NNDFirebaseGoogleDataModel.h"


@interface FirebaseGoogleController ()

@property(strong, nonatomic) FIRAuthStateDidChangeListenerHandle handle;

@end

@implementation FirebaseGoogleController

//- (instancetype)initFirebaseGoogle:(NNDFirebaseGoogleDataModel*) firebaseGoogle {
//    self = [super init];
//    if (self) {
//
//        _handle = [firebaseGoogle handle];
//    }
//    return self;
//}



- (void)FirebaseGoogleViewDidLoad {
    //[super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

  //  _mainViewController = [[NNDMasterUIViewController alloc]init];

    //[self.view addSubview:_mainViewController.AddMainSubView];

    // Google Single Sing In
    [GIDSignIn sharedInstance].uiDelegate = self;

    // Google Sing Sing In Login As son as the app is being loaded.
    // This method will keep the app logined in constantly.
    [[GIDSignIn sharedInstance] signIn];


}


- (void)FirebaseGoogleDidReceiveMemoryWarning {
    ///[super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


// Notifies the view controller that its view is about to be added to a view hierarchy.
- (void)FirebaseGoogleViewWillAppear:(BOOL)animated {
    //[super viewWillAppear:animated];
    // [START auth_listener]
    self.handle = [[FIRAuth auth]
                   addAuthStateDidChangeListener:^(FIRAuth *_Nonnull auth, FIRUser *_Nullable user) {
                       // [START_EXCLUDE]
                       NSLog(@" user = %@", user);
                       // [END_EXCLUDE]
                   }];
    // [END auth_listener]
}

- (void)FirebaseGoogleViewWillDisappear:(BOOL)animated {
    //[super viewWillDisappear:animated];
    // [START remove_auth_listener]
    [[FIRAuth auth] removeAuthStateDidChangeListener:_handle];
    // [END remove_auth_listener]
}

// Notifies the view controller that its view is about to be added to a view hierarchy.
- (void)FirebaseGoogleViewDidDisappear:(BOOL)animated{
}

// Notifies the view controller that its view was added to a view hierarchy.
- (void)FirebaseGoogleViewDidAppear:(BOOL)animated{
}

//#pragma Authentication with Google Sing Sing in
//- (void)change:(id)something{
//
//
//}
//- (IBAction)action:(id)sender {
//    //[_mainViewController loadUserProfileView];
//
//}

@end
