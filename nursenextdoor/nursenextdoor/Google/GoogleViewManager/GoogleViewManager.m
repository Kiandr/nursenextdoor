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

#import "mainUIViewController.h"

@import GoogleSignIn;



@interface GoogleViewManager ()


@property(strong, nonatomic) mainUIViewController *  mainUIViewControllerMember;
@end

@implementation GoogleViewManager

// constructure:
//{mainUIViewControllerMember}

- (instancetype)init
{
    self = [super init];
    if (self) {

    }
    return self;
}



- (UIView*) initializetWithGIDSignInButton{



    return _mainUIViewControllerMember.buildFirstPageViewAddGoogleSingInButton;


}


- (UIView*) mainViewUserProfile{
    


    return _mainUIViewControllerMember.buildUserProfile;

}

@end
