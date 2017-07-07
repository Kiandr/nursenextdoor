//
//  MainPreviewScreenUIViewInteractionEntity.m
//  nursenextdoor
//
//  Created by Kian Davoudi-Rad on 2017-07-07.
//  Copyright © 2017 Kian Davoudi-Rad. All rights reserved.
//


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "MainPreviewScreenUIViewInteractionEntity.h"

@implementation  MainPreviewScreenUIViewInteractionEntity: NSObject

- (instancetype)init {
    self = [super init];
    if (self) {


    }
    return self;
}


   // masterUIViewDataStructure
- (instancetype) initWithMainPreviewScreenUIViewInteractionEntity:(MainPreviewScreenUIViewInteractionEntity*) model{
    self = [super init];
    if (self) {

        _tapGesturePropery = model->_tapGesturePropery;
        _bringOnSlidingMenueUIButtonStruct = model->_bringOnSlidingMenueUIButtonStruct;
        _selfClassDataModel = self;
        
    }
    return self;
}

@end

