//
//  GoogleViewManager.h
//  nursenextdoor
//
//  Created by Kian Davoudi-Rad on 2017-06-16.
//  Copyright © 2017 Kian Davoudi-Rad. All rights reserved.
//

#ifndef GoogleViewManager_h
#define GoogleViewManager_h

#import <UIKit/UIKit.h>
@import GoogleSignIn;

@interface GoogleViewManager : NSObject

- (GIDSignInButton*) initializetWithGIDSignInButton;

@end



#endif /* GoogleViewManager_h */
