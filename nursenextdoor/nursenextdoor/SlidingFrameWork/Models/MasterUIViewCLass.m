//
//  MasterUIViewDataStructure.m
//  nursenextdoor
//
//  Created by Kian Davoudi-Rad on 2017-06-30.
//  Copyright © 2017 Kian Davoudi-Rad. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MasterUIViewCLass.h"


@implementation MasterUIViewCLass:NSObject

- (instancetype)init {
    self = [super init];
    if (self) {

        
    }
    return self;
}

-(instancetype)initWithMasterUIViewDataStructureApplicationUIView: (UIView*) applicationUIView{

    self = [super init];
    if (self) {


        _masterUIView = [[UIView alloc] initWithFrame:(applicationUIView.frame)];
        _masterUIViewFrame  = applicationUIView.frame;
        _masterUIViewBackGroundColor = [UIColor greenColor];


    }
    return self;

}


@end

