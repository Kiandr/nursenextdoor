//
//  UIViewManager.m
//  callMe
//
//  Created by Kian Davoudi-Rad on 2017-03-14.
//  Copyright © 2017 Kian Davoudi-Rad. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "MainUIViewController.h"
#import "UIViewFrameWorkModel.h"
#import "SlideViewModel.h"
#import "MasterUIViewDataModel.h"
#import "SlidingUIViewServices.h"
@import Firebase;
@import FirebaseCore;
@import GoogleSignIn;

@implementation MainUIViewController

- (instancetype)init {
    self = [super init];
    if (self) {

        NSLog(@"MainUIViewController class was inaiated successfully! KDR!");
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    _service = [[SlidingUIViewServices alloc]init];
    UIView *testTheViewBuilder = [_service buildMasterUiViewEntryPointToTheClass];
    // Do any additional setup after loading the view, typically from a nib.
    [self.view addSubview:testTheViewBuilder];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated{


}

- (void)viewDidDisappear:(BOOL)animated{
}

- (void)viewDidAppear:(BOOL)animated{
}
//-(void)taggleUIViews:(id)sender{
//
//    UIButton * myButton = sender;
//
//    [_service toggleBackAndForthTheSlidingUIView];
//    NSLog(@"did call the function");
//}
@end


