//
//  MainPreviewScreenUIViewInteractionEntity.h
//  nursenextdoor
//
//  Created by Kian Davoudi-Rad on 2017-07-07.
//  Copyright © 2017 Kian Davoudi-Rad. All rights reserved.
//

#ifndef MainPreviewScreenUIViewInteractionEntity_h
#define MainPreviewScreenUIViewInteractionEntity_h

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class MainPreviewScreenUIViewInteractionEntity;


@interface MainPreviewScreenUIViewInteractionEntity : NSObject
/*
 
 Author:    Kian D.Rad
 Date:      July 7th 2017
 README:    This class contains individual components such as 
            UIButton, gestures. For detail of available guestures please visit.
 https://developer.apple.com/ios/human-interface-guidelines/interaction/gestures/

 */



typedef struct {
    __unsafe_unretained UIButton  *bringOnSlidingMenueUIButtonStruct;
    __unsafe_unretained UIGestureRecognizer *tapGestureStruct;

}mainPreviewScreenUIViewInteractionEntity;



// Public Properties:
@property (strong, nonatomic) UIGestureRecognizer* tapGesturePropery;
@property (strong, nonatomic) UIButton* bringOnSlidingMenueUIButton;
@property (strong,nonatomic) MainPreviewScreenUIViewInteractionEntity *mainPreviewScreenUIViewInteractionEntity;



- (instancetype)init ;

- (instancetype) initWithMainPreviewScreenUIViewInteractionEntityWithModel:(MainPreviewScreenUIViewInteractionEntity*)model;


//The event handling method
- (void)handleSingleTap:(UITapGestureRecognizer *)recognizer;


-(void) buttonClicked:(UIButton*)sender;

@end

#endif /* MainPreviewScreenUIViewInteractionEntity_h */
