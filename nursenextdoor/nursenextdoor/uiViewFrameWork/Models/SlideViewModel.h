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
@property (nonatomic, strong) UIView* userProfile;
@property (nonatomic, strong) UIView* Patients;
@property (nonatomic, strong) UIView* TakeAnExam;
@property (nonatomic, strong) UIView* Notifications;
@property (nonatomic, strong) UIView* Map;



@end

#endif /* slideViewModel_h */
