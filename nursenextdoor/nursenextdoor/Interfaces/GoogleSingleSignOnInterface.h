//
//  Header.h
//  nursenextdoor
//
//  Created by Kian Davoudi-Rad on 2017-06-18.
//  Copyright © 2017 Kian Davoudi-Rad. All rights reserved.
//

#ifndef Header_h
#define Header_h
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

// add Google delegate method for Sing Sing On framework
// https://firebase.google.com/docs/auth/ios/google-signin view this page for further deatil.

@import Firebase;
@import GoogleSignIn;

@interface GoogleSingleSignOnInterface : NSObject

-(void) testGoogleSingleSignOnInterface;

@end

#endif /* Header_h */
