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


        _mainPewviewScreenUIView = [[UIView alloc] init];


        _mainPewviewScreenUIView.frame  = applicationUIView.frame;
        _mainPewviewScreenUIView.backgroundColor = [UIColor greenColor];


    }
    return self;

}


@end

