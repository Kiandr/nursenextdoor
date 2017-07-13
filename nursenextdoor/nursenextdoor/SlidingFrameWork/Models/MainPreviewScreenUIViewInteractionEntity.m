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




/*
 
 Author: Kian D.Rad
 Date:   July 13th 2017
 README: This file initalizes all the containers and interactivity components. 
 ToDo: 
    1- build UIButton based on your prefference
*/

- (instancetype) initWithMainPreviewScreenUIViewInteractionEntityWithModel:(MainPreviewScreenUIViewInteractionEntity*)model{
    self = [super init];
    if (self) {

        _tapGesturePropery = [[UIGestureRecognizer alloc] initWithTarget:self action:@selector(handleSingleTap:)];
        _bringOnSlidingMenueUIButtonStruct = [[UIButton alloc] initWithFrame:CGRectMake(0,0,100,100)];




        [_bringOnSlidingMenueUIButtonStruct addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventAllEvents];
        [_bringOnSlidingMenueUIButtonStruct setFrame:CGRectMake(52, 252, 215, 40)];
        [_bringOnSlidingMenueUIButtonStruct setTitle:@"Login" forState:UIControlStateNormal];
        [_bringOnSlidingMenueUIButtonStruct setExclusiveTouch:YES];

        // if you like to add backgroundImage else no need
        //[_bringOnSlidingMenueUIButtonStruct setbackgroundImage:[UIImage imageNamed:@"XXX.png"] forState:UIControlStateNormal];





        _mainPreviewScreenUIViewInteractionEntity = self;
        model = self;
        
    }
    return self;
}


//The event handling method
- (void)handleSingleTap:(UITapGestureRecognizer *)recognizer
{
    CGPoint location = [recognizer locationInView:[recognizer.view superview]];

    //Do stuff here...
}


-(void) buttonClicked:(UIButton*)sender
{
    NSLog(@"you clicked on button %ld", (long)sender.tag);
}

@end

