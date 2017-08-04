//
//  UIViewNNDBarController.h
//  nursenextdoor
//
//  Created by Kian Davoudi-Rad on 2017-07-21.
//  Copyright © 2017 Kian Davoudi-Rad. All rights reserved.
//
/*
 Author: Kian D.Rad
 Date:
 README:
 */

#ifndef UIViewNNDBarController_h
#define UIViewNNDBarController_h

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "UIViewNNDBar.h"

@protocol UIViewNNDBarControllerServicesProtocolDelegate <NSObject>

/*
 Author: Kian D.Rad
 Date:
 README:
 */


@end




@class UIViewNNDBarControllerServices;
@interface UIViewNNDBarControllerServices :  NSObject<UIViewNNDBarControllerServicesProtocolDelegate>

@property(assign, nonatomic)id<UIViewNNDBarControllerServicesProtocolDelegate> delegate;

/*
 Author: Kian D.Rad
 Date:
 README:
 */

@end


#endif /* UIViewNNDBarController_h */
