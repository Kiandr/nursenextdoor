//
//  Auth.h
//  nursenextdoor
//
//  Created by Kian Davoudi-Rad on 2017-06-15.
//  Copyright © 2017 Kian Davoudi-Rad. All rights reserved.
//

#ifndef Auth_h
#define Auth_h

#import <UIKit/UIKit.h>
#import "Auth.h"
#import "Firebase.h"
@import GoogleSignIn;



@interface Auth : NSObject<GIDSignInUIDelegate>

- (id)initWithFIRAuthStateDidChangeListenerHandle:(FIRAuthStateDidChangeListenerHandle*) handleIncome;

@end


#endif /* Auth_h */
