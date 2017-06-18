//
//  Auth.m
//  nursenextdoor
//
//  Created by Kian Davoudi-Rad on 2017-06-15.
//  Copyright © 2017 Kian Davoudi-Rad. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Auth.h"
#import "Firebase.h"

@interface Auth ()

@property(strong, nonatomic) FIRAuthStateDidChangeListenerHandle handle;

@end

@implementation Auth : NSObject

- (id)initWithFIRAuthStateDidChangeListenerHandle:(FIRAuthStateDidChangeListenerHandle*) handleIncome
{
    // Initialize the superclass first.
    //
    // Make sure initialization was successful by making sure
    // an instance was returned. If initialization fails, e.g.
    // because we run out of memory, the returned value would
    // be nil.
    self = [super init];
    if (self)
    {
        // Superclass successfully initialized.
        self.handle = *handleIncome;
    }
    return self;
}




@end
