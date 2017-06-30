//
//  SlidingUIViewDataModel.h
//  nursenextdoor
//
//  Created by Kian Davoudi-Rad on 2017-06-29.
//  Copyright © 2017 Kian Davoudi-Rad. All rights reserved.
//

#ifndef SlidingUIViewDataModel_h
#define SlidingUIViewDataModel_h


#import "MasterUIViewCLass.h"
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class SlidingUIViewDataModel;


@interface SlidingUIViewDataModel : NSObject
/*
 Author: Kian D.Rad
 Date:   Jun 30th 2017
 README: The only UIView that travels is thet rightUIVIew.
 In order to keep the transition localized, we use two
 coorindates, A and B. A is the intial location of RighUIView
 and B respectively is the target location of RightUIView.
 At the Initalization, the A is the same as dynamic size of SuperView.
 */
@property(nonatomic,assign) NSMutableArray* mutableArrayPrtToHeader;


typedef struct masterUIViewDataStructure{
    __unsafe_unretained UIView  *View;
    __unsafe_unretained CGRect Frame;

}masterUIViewDataStructure;




@property(nonatomic, strong) MasterUIViewCLass* masterUIViewClass;

//@property(nonatomic, assign) CGRect  masterUIViewFrameSize;

@property(nonatomic, strong) UIView* rightUIView;
@property(nonatomic, assign) CGRect  rightUIViewFrameSize;
@property(nonatomic, assign) CGRect  rightUIViewCoordinatesA;
@property(nonatomic, assign) CGRect  rightUIViewCoordinatesB;

@property(nonatomic, strong) UIView* buttonMenuPlaceHolderBarUIView;
@property(nonatomic, assign) CGRect  buttonMenuPlaceHolderBarUIViewFrameSize;

@property(nonatomic, strong) UIView* buttonMenuPlaceHolderFrameUIView;
@property(nonatomic, assign) CGRect  buttonMenuPlaceHolderFrameUIViewFrameSize;

@property(nonatomic, strong) SlidingUIViewDataModel *slidingUIViewDataModel;

- (instancetype)initWithSlidingUIViewDataModel:(SlidingUIViewDataModel*) incomingSlidingUIViewDataModel;

@end
#endif /* SlidingUIViewDataModel_h */
