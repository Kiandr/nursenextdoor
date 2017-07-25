//
//  CommomUtility.h
//  nursenextdoor
//
//  Created by Kian Davoudi-Rad on 2017-07-19.
//  Copyright © 2017 Kian Davoudi-Rad. All rights reserved.
//

#ifndef CommomUtility_h
#define CommomUtility_h

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class;
@interface CommomUtility : NSObject

-(UIButton*) buildUIButtonWith: (UIButton*) incominguiButton AndCallBackFunctionIs (id) refferenceToCallBackFunction;

@end


#endif /* CommomUtility_h */
