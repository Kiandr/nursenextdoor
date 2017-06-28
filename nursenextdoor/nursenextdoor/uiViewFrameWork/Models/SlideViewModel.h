//
//  slideViewModel.h
//  nursenextdoor
//
//  Created by Kian Davoudi-Rad on 2017-06-22.
//  Copyright © 2017 Kian Davoudi-Rad. All rights reserved.
//

#ifndef slideViewModel_h
#define slideViewModel_h
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface SlideViewModel : NSObject
@property (nonatomic, strong) UIView* userProfileUIView;
@property (nonatomic, strong) UIView* PatientsUIView;
@property (nonatomic, strong) UIView* TakeAnExamUIView;
@property (nonatomic, strong) UIView* NotificationsUIView;
@property (nonatomic, strong) UIView* MapsUIView;



@end

#endif /* slideViewModel_h */
