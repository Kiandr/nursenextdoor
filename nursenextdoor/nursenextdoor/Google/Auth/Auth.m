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


- (instancetype)init
{
    self = [super init];
    if (self) {

    }
    return self;
}




- (id)initWithFIRAuthStateDidChangeListenerHandle:(FIRAuthStateDidChangeListenerHandle*) handleIncome
{
    self = [super init];
    if (self)
    {
        // Superclass successfully initialized.
        self.handle = *handleIncome;
    }
    return self;
}




@end
