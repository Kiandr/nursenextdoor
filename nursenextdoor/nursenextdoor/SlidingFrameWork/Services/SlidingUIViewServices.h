//
//  SlidingUIViewServices.h
//  nursenextdoor
//
//  Created by Kian Davoudi-Rad on 2017-06-29.
//  Copyright © 2017 Kian Davoudi-Rad. All rights reserved.
//

#ifndef SlidingUIViewServices_h
#define SlidingUIViewServices_h

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class SlidingUIViewServices;

@interface SlidingUIViewServices : NSObject

@property(nonatomic, strong) UIView* leftUiView;
@property(nonatomic, strong) UIView* rightUiView;
@property(nonatomic, strong) UIView* masterUIView;
@property(nonatomic, strong)UIButton *mainButton;
@property(nonatomic, strong) NSMutableArray* leftUiViewTableView;

- (instancetype) init;
- (instancetype) buildMasterUiViewEntryPointToTheClass;
//- (instancetype) toggleBackAndForthTheSlidingUIView;

@end

#endif /* SlidingUIViewServices_h */
