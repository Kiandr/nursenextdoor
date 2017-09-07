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
#import "UIViewServices.h"

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

    // Construct services
    _service = [[UIViewServices alloc]initWithSlidingUIViewDataModel:_slidingUIViewDataModel];

//    // GetMaster UIVIew Model
//     UIView *testTheViewBuilder = [_service GetterSlidingUIViewDataModel];

    // Do any additional setup after loading the view, typically from a nib.
    [self.view addSubview:[_service GetterSlidingUIViewDataModel]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated{

    [super viewWillAppear:animated];

}

- (void)viewDidDisappear:(BOOL)animated{
    [super viewDidDisappear:animated];
}

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidDisappear:animated];
}

- (void) buttonClicked:(UIButton*)sender{
    NSLog(@"you clicked on button %ld", (long)sender.tag);
}

@end


