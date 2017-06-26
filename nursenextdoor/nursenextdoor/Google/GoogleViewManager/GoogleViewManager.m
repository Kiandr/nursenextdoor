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

#import "MainUIViewController.h"

@import GoogleSignIn;



@interface GoogleViewManager ()


@property(strong, nonatomic) MainUIViewController *  mainUIViewControllerMember;
@end

@implementation GoogleViewManager

// constructure:
//{MainUIViewControllerMember}

- (instancetype)init
{
    self = [super init];
    if (self) {

    }
    return self;
}



- (UIView*) initializetWithGIDSignInButton{



 //   return _mainUIViewControllerMember.buildFirstPageViewAddGoogleSingInButton;
    @throw [NSException exceptionWithName:NSInternalInconsistencyException
                                   reason:[NSString stringWithFormat:@"You must override %@ in a subclass", NSStringFromSelector(_cmd)]
                                 userInfo:nil];

}


- (UIView*) mainViewUserProfile{
    


    @throw [NSException exceptionWithName:NSInternalInconsistencyException
                                   reason:[NSString stringWithFormat:@"You must override %@ in a subclass", NSStringFromSelector(_cmd)]
                                 userInfo:nil];
}

@end
