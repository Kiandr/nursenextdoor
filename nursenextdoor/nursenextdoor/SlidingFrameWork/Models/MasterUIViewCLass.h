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



@class MasterUIViewCLass;

@interface MasterUIViewCLass:NSObject


typedef struct MasterUIViewDataStructure{
    __unsafe_unretained UIView  *UIView;
    __unsafe_unretained CGRect  Frame;
    __unsafe_unretained UIColor *UIColor;

}MasterUIViewDataStructure;



@property (nonatomic, strong) UIView    *masterUIView;
@property (nonatomic, assign) CGRect    masterUIViewFrame;
@property (nonatomic, assign) UIColor   *masterUIViewBackGroundColor;

// Master Initalizer:
- (instancetype) init;
-(instancetype)initWithMasterUIViewDataStructureApplicationUIView: (UIView*) applicationUIView;

@end




#endif /* MasterUIViewDataStructure_h */
