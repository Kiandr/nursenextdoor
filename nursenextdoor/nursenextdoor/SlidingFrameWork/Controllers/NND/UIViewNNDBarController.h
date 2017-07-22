//
//  UIViewNNDBarController.h
//  nursenextdoor
//
//  Created by Kian Davoudi-Rad on 2017-07-21.
//  Copyright © 2017 Kian Davoudi-Rad. All rights reserved.
//

#ifndef UIViewNNDBarController_h
#define UIViewNNDBarController_h

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "UIViewNNDBar.h"

/*
 Author: Kian D.Rad
 Date: 
 README:
 */

@class UIViewNNDBarController;
@interface UIViewNNDBarController : UIViewController<UIButtonDataModelControllerDelegate>


@end


#endif /* UIViewNNDBarController_h */
/*

 -(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
 {
 LastNameViewController *lastNameViewController = [segue destinationViewController];
 lastNameViewController.delegate = self;
 }
 */
