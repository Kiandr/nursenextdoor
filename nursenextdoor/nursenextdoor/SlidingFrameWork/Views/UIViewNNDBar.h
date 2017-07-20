//
//  UIViewNNDBar.h
//  nursenextdoor
//
//  Created by Kian Davoudi-Rad on 2017-07-14.
//  Copyright © 2017 Kian Davoudi-Rad. All rights reserved.
//

/*
 Author: Kian D.Rad
 Date:   July 14th 2017
 README: This is a UIVIew class, it shows the bar with its contents.

 */


#ifndef UIViewNNDBar_h
#define UIViewNNDBar_h


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@class UIViewNNDBar;
@interface UIViewNNDBar : UIViewController

// Return this class, only. One UIView with eveything
@property (strong,nonatomic) UIView *uiVIewNNDBarView;

// Use this pointer to set access into this class
@property (strong,nonatomic) UIViewNNDBar *uIViewNNDBar;


// Each button represents a UIVIew, should follow the same as SlidingUIViewDataModel
@property (strong,nonatomic) UIButton *uiButtonHome;
@property (strong,nonatomic) UIButton *uiButtonScheduledVisits;
@property (strong,nonatomic) UIButton *uiButtonMap;
@property (strong,nonatomic) UIButton *uiButtonHelp;





- (instancetype)init;
- (instancetype)initWithDataModel: (UIViewNNDBar*) uiViewNNDBarIncomingDataModel;


/*
 Author:    Kian D.Rad
 Date:      July 14th 2017
 README:    This is the getter, make sure you would have initalized with construcor
 
 */
- (UIView*)GetterUIViewNNDBar;
@end


#endif /* UIViewNNDBar_h */
