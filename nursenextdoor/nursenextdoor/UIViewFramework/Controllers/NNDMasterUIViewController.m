//  Created by Kian Davoudi-Rad on 2017-03-14.
//  Copyright © 2017 Kian Davoudi-Rad. All rights reserved.


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#include "NNDMasterUIViewController.h"
#import "UIViewFrameWorkModel.h"
#import "SlideViewModel.h"
#import "MasterUIViewDataModel.h"
#import "SlidingUIViewServices.h"
#import "UIViewServices.h"

@import Firebase;
@import FirebaseCore;
@import GoogleSignIn;


@interface NNDMasterUIViewController()

@property(strong, nonatomic) FIRAuthStateDidChangeListenerHandle handle;

@end

@implementation NNDMasterUIViewController

- (void)viewDidLoad {
    [super viewDidLoad];


    // @property (assign, nonatomic) FirebaseGoogleController *firebaseGoogleController;
    /*
     Author: Kian D.Rad
     Date: Sep7th 2017
     README: this is the class that keeps the user status loged in, should be moved into a new place, but for now will throw them here.
     */


    // Google Single Sing In
    [GIDSignIn sharedInstance].uiDelegate = self;

    // Google Sing Sing In Login As son as the app is being loaded.
    // This method will keep the app logined in constantly.
    [[GIDSignIn sharedInstance] signIn];



    // Construct services
    _service = [[UIViewServices alloc]initWithSlidingUIViewDataModel:_slidingUIViewDataModel];

    // Do any additional setup after loading the view, typically from a nib.
    [self.view addSubview:[_service GetterSlidingUIViewDataModel]];


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated{
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

- (void)ViewWillDisappear:(BOOL)animated {
    //[super viewWillDisappear:animated];

    // [START remove_auth_listener]
    [[FIRAuth auth] removeAuthStateDidChangeListener:_handle];
    // [END remove_auth_listener]
}

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
}

- (void)viewDidDisappear:(BOOL)animated{
    [super viewDidDisappear:animated];
}

@end


