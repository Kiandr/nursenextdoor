//
//  MasterUIViewDataStructure.h
//  nursenextdoor
//
//  Created by Kian Davoudi-Rad on 2017-06-30.
//  Copyright © 2017 Kian Davoudi-Rad. All rights reserved.
//

#ifndef MasterUIViewDataStructure_h
#define MasterUIViewDataStructure_h
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "UiViewSizesDatamodel.h"

@class MasterUIViewCLass;

@interface MasterUIViewCLass:NSObject


/*
 Author: Kian D.Rad
 Date:   July 7th 2017
 README: Use this data strucutre, to build content of mainPewviewScreenUIView. 
    The intention is to avoid "MAGIC SCRIPTS". Evey single line of this code shall
    be easy undrestandable to others, transparent and self descriptive. If you have 
    any question, please review the visual and colourful digaram of desing at kindr:
    https://kindrsite.wordpress.com/2017/06/29/uiview-animation/
 */
typedef struct MasterUIViewDataStructure{
    __unsafe_unretained UIView  *UIView;
    __unsafe_unretained CGRect  Frame;
    __unsafe_unretained UIColor *UIColor;

}MasterUIViewDataStructure;



@property (nonatomic, strong) UIView    *mainPewviewScreenUIView;
@property (nonatomic, assign) CGRect     mainPewviewScreenUIViewFrame;
@property (nonatomic, assign) UIColor   *mainPewviewScreenUIViewBackGroundColor;

@property (nonatomic,strong) MasterUIViewCLass* masterUIViewCLass;



// struct mainPreviewScreenUIViewInteractionEntity
// Master Initalizer:
- (instancetype) init;

- (instancetype) initWithUIViewSizesDatamodel :(UiViewSizesDatamodel*) uiViewSizesDatamodel;

@end




#endif /* MasterUIViewDataStructure_h */
