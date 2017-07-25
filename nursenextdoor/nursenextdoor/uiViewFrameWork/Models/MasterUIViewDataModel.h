//
//  MasterUIViewDataModel.h
//  nursenextdoor
//
//  Created by Kian Davoudi-Rad on 2017-06-28.
//  Copyright © 2017 Kian Davoudi-Rad. All rights reserved.
//

#ifndef MasterUIViewDataModel_h
#define MasterUIViewDataModel_h


/*
 Author: Kian D.Rad
 Date: Jun 28th 2017
 README: This contains a reffernece ponter to change content of RightUIView dynamically,
        It contains a leftUIView which is UITableView, click on the items on UIVIew, 
        then the ponter changes the UIVIew inside theh right. The User needs to inject this 
        UIView to their master UIView, like a mock up that sits on tope. Then the user 
        has to use the enum type to change the pointer type. That is all.
 ToDo:
 */

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "SlideViewModel.h"


@interface MasterUIViewDataModel : NSObject

@property(nonatomic, strong) UIView* masterView;
@property(nonatomic, weak) SlideViewModel* leftViewPointer;

@end



#endif /* MasterUIViewDataModel_h */
