//
//  CommomUtility.m
//  nursenextdoor
//
//  Created by Kian Davoudi-Rad on 2017-07-19.
//  Copyright © 2017 Kian Davoudi-Rad. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@implementation CommomUtility:NSObject

-(UIButton*) buildUIButtonWith: (UIButton*) incominguiButton AndCallBackFunctionIs: (id) refferenceToCallBackFunction{

    UIButton *newButton = [[UIButton alloc] init];


    @try {
        
    }
    @catch (NSException *exception) {
        NSLog(@"%@", exception.reason);
    }
    @finally {
        NSLog(@"Char at index %d cannot be found");

       // set the title of button to error name;
        [newButton setTitle:@"ErrorInCommonUtility" forState:UIControlStateNormal];

    }

return newButton;
}

@end
