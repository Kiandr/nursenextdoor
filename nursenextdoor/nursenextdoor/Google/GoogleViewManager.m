//
//  GoogleViewManager.m
//  nursenextdoor
//
//  Created by Kian Davoudi-Rad on 2017-06-16.
//  Copyright © 2017 Kian Davoudi-Rad. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "GoogleViewManager.h"
#import "Firebase.h"

#import "UIViewManager.h"

@import GoogleSignIn;



@interface GoogleViewManager ()


@property(strong, nonatomic) UIViewManager *  uiViewManager;
@end

@implementation GoogleViewManager

- (UIView*) initializetWithGIDSignInButton{

    _uiViewManager =[[UIViewManager alloc] init];

    return _uiViewManager.buildFirstPageViewAddGoogleSingInButton;


}


- (UIView*) mainViewUserProfile{
    
    _uiViewManager =[[UIViewManager alloc] init];

    return _uiViewManager.buildUserProfile;

}

@end
