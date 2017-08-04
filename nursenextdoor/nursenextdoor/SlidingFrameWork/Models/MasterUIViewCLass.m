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

- (instancetype) initWithUIViewSizesDatamodel :(UiViewSizesDatamodel*) uiViewSizesDatamodel{

    self = [super init];
    if (self) {


        _mainPewviewScreenUIView =  [[UIView alloc] initWithFrame:CGRectMake(uiViewSizesDatamodel.mainPewviewScreenUIViewFrameOriginex,
                                                                             uiViewSizesDatamodel.mainPewviewScreenUIViewFrameOriginey,
                                                                             uiViewSizesDatamodel.mainPewviewScreenUIViewFrameSizeWidth,
                                                                             uiViewSizesDatamodel.mainPewviewScreenUIViewFrameSizeHeight)];

        [_mainPewviewScreenUIView setBackgroundColor:uiViewSizesDatamodel.mainPewviewScreenUIViewBackGroundColor ];

    }
    return self;

}


@end

