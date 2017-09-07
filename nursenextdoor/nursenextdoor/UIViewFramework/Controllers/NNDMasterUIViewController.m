//  Created by Kian Davoudi-Rad on 2017-03-14.
//  Copyright © 2017 Kian Davoudi-Rad. All rights reserved.


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#include "NNDMasterUIViewController.h"
#import "UIViewFrameWorkModel.h"
#import "SlideViewModel.h"
#import "MasterUIViewDataModel.h"
#import "SlidingUIViewServices.h"
#import "UIViewServices.h"

@import Firebase;
@import FirebaseCore;
@import GoogleSignIn;

@implementation NNDMasterUIViewController 

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

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
}

- (void)viewDidDisappear:(BOOL)animated{
    [super viewDidDisappear:animated];
}

@end


