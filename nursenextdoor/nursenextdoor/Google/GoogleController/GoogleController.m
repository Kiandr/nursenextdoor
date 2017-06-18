//
//  GoogleController.m
//  nursenextdoor
//
//  Created by Kian Davoudi-Rad on 2017-06-15.
//  Copyright © 2017 Kian Davoudi-Rad. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GoogleController.h"
#import "Firebase.h"
#import "GoogleViewManager.h"

@interface GoogleController ()
@property(strong, nonatomic) FIRAuthStateDidChangeListenerHandle handle;
@property(strong, nonatomic) GoogleViewManager* googleViewManager;
@property(weak, nonatomic) IBOutlet GIDSignInButton *signInButton;
//@property(weak, nonatomic) UIView *loginUIView;
@end

@implementation GoogleController




- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSLog(@"Google Controller was loaded");

    // manage and build view
    _googleViewManager = [[GoogleViewManager alloc] init];
    // Keep refference to the Login UIView
    _loginUIView =_googleViewManager.initializetWithGIDSignInButton;
    [self.view addSubview:_loginUIView];



    // Google Single Sing In
    [GIDSignIn sharedInstance].clientID = [FIRApp defaultApp].options.clientID;
    [GIDSignIn sharedInstance].delegate = self;



    [GIDSignIn sharedInstance].uiDelegate = self;
    [[GIDSignIn sharedInstance] signIn];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


// Notifies the view controller that its view is about to be added to a view hierarchy.
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    // [START auth_listener]
    self.handle = [[FIRAuth auth]
                   addAuthStateDidChangeListener:^(FIRAuth *_Nonnull auth, FIRUser *_Nullable user) {
                       // [START_EXCLUDE]
                       NSLog(@" user = %@", user);
                       // [END_EXCLUDE]
                   }];
    // [END auth_listener]
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    // [START remove_auth_listener]
    [[FIRAuth auth] removeAuthStateDidChangeListener:_handle];
    // [END remove_auth_listener]
}

// Notifies the view controller that its view is about to be added to a view hierarchy.
- (void)viewDidDisappear:(BOOL)animated{
}

// Notifies the view controller that its view was added to a view hierarchy.
- (void)viewDidAppear:(BOOL)animated{
}

#pragma Authentication with Google Sing Sing in

// Authenticate with Firebase
//- (void)signIn:(GIDSignIn *)signIn
//didSignInForUser:(GIDGoogleUser *)user
//     withError:(NSError *)error {
//    // ...
//    if (error == nil) {
//        GIDAuthentication *authentication = user.authentication;
//        FIRAuthCredential *credential =
//        [FIRGoogleAuthProvider credentialWithIDToken:authentication.idToken
//                                         accessToken:authentication.accessToken];
//        // ...
//
//        [[FIRAuth auth] signInWithCredential:credential
//                                  completion:^(FIRUser *user, NSError *error) {
//                                      if (error) {
//                                          // ...
//                                          return;
//                                      }
//                                      // User successfully signed in. Get user data from the FIRUser object
//                                      // ...
//                                      NSLog(@"%@-> KDR",user);
//
//                                  }];
//    } else {
//        // ...
//    }
//
//    
//}
//




#pragma - Google Single Sing On
- (BOOL)application:(nonnull UIApplication *)application
            openURL:(nonnull NSURL *)url
            options:(nonnull NSDictionary<NSString *, id> *)options {
    return [[GIDSignIn sharedInstance] handleURL:url
                               sourceApplication:options[UIApplicationOpenURLOptionsSourceApplicationKey]
                                      annotation:options[UIApplicationOpenURLOptionsAnnotationKey]];
}
// To manage the user info reffer to this:
// https://firebase.google.com/docs/auth/ios/manage-users
- (void)signIn:(GIDSignIn *)signIn
didSignInForUser:(GIDGoogleUser *)user
     withError:(NSError *)error {
    // ...
    if (error == nil) {
        GIDAuthentication *authentication = user.authentication;
        FIRAuthCredential *credential =
        [FIRGoogleAuthProvider credentialWithIDToken:authentication.idToken
                                         accessToken:authentication.accessToken];
        NSLog(@"authentication.idToken = %@",authentication.idToken);
        NSLog(@"authentication.accessToken %@",authentication.accessToken);
        NSLog(@"authentication %@",authentication);
        NSLog(@"credential %@",credential);
        // ... sing into FireBase could be a function
        [[FIRAuth auth] signInWithCredential:credential
                                  completion:^(FIRUser *user, NSError *error) {
                                      if (error) {
                                          // ...
                                          return;
                                      }
                                      // User successfully signed in. Get user data from the FIRUser object
                                      // ...
                                      NSLog(@"User successfully signed in. Get user data from the FIRUser object %@",user);
                                  }];


    } else {
        // ...
        NSLog(@"User  signed in failed -> [FIRAuth auth].currentUser.email: %@",[FIRAuth auth].currentUser.email);
        //[_loginUIView removeFromSuperview];
    }
}

- (void)signIn:(GIDSignIn *)signIn
didDisconnectWithUser:(GIDGoogleUser *)user
     withError:(NSError *)error {
    // Perform any operations when the user disconnects from app here.
    // ...
}

@end
