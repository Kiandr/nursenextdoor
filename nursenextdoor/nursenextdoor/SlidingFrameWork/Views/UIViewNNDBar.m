//
//  UIViewNNDBar.m
//  nursenextdoor
//
//  Created by Kian Davoudi-Rad on 2017-07-14.
//  Copyright © 2017 Kian Davoudi-Rad. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "UIViewNNDBar.h"
#import "UiViewSizesDatamodel.h"

@implementation UIViewNNDBar

- (instancetype)init {
    self = [super init];
    if (self) {


    }
    return self;
}

- (instancetype)initWithDataModel: (UIViewNNDBar*) uiViewNNDBarIncoming AndSizesDataModel:(UiViewSizesDatamodel*) incominguiViewSizesDatamodel{
    /*
     Author: Kian D.Rad
     Date:   July 14th 2017
     README: This is the initalizer or constructor with the datamodel. 
     ToDo:
     */

    self = [super init];
    if (self) {
            _uiViewSizesDatamodel = incominguiViewSizesDatamodel;

            _uiVIewNNDBarView = [[UIView alloc]initWithFrame:[UIApplication sharedApplication].delegate.window.frame];
            _uiVIewNNDBarView.backgroundColor = [UIColor darkGrayColor];

        /*
         Author: Kian D.Rad
         Date:   July 14th 2017
         README: This class build button with an incomind datamodel
         ToDO:
         */


        UIButtonDataModel *builder = [[UIButtonDataModel alloc]init];
     //   builder.reciverClass = self;
    //    builder.modelUIButtonTitle =@"Home";

        _uiButtonHome = [[UIButtonDataModel alloc]initWithDataModel:builder];
        // Set a pointer to the self class.
        _uIViewNNDBar = self;


        // test1
        // built uiview for the button.
        _uiButtonHome.uiViewButtonDataModel = [[UIView alloc]initWithFrame:CGRectMake(_uiViewSizesDatamodel.uiviewPermenantConnectionToSlidingUIViewModelFrameOriginex,
                                                                              _uiViewSizesDatamodel.uiviewPermenantConnectionToSlidingUIViewModelFrameOriginey,
                                                                              _uiViewSizesDatamodel.uiviewPermenantConnectionToSlidingUIViewModelFrameSizeWidth,
                                                                              (_uiViewSizesDatamodel.uiviewPermenantConnectionToSlidingUIViewModelFrameSizeHeight - _uiViewSizesDatamodel.logoUiButtonFrameSizeHeight))];
        // build a lable
        UILabel *welcome = [[UILabel alloc] initWithFrame:CGRectMake(0, 100, 400, 400)];
        [welcome setText:@"This is the home page"];
        [_uiButtonHome.uiViewButtonDataModel setBackgroundColor:[UIColor clearColor]];


        [_uiButtonHome.uiViewButtonDataModel insertSubview:welcome atIndex:0];




        // Repeat the same process for checkInScreen




        UIButtonDataModel *builder2 = [[UIButtonDataModel alloc]init];
     //   builder2.reciverClass = self;
    //    builder2.modelUIButtonTitle =@"Visit";
        _uiButtonScheduledVisits = [[UIButtonDataModel alloc]initWithDataModel:builder2];
        [_uiButtonScheduledVisits.uiButtonReturnObject setFrame:CGRectMake(100, 600 , 100, 100)];
        // Set a pointer to the self class.
        _uIViewNNDBar = self;


        // test1
        // built uiview for the button.
        _uiButtonScheduledVisits.uiViewButtonDataModel = [[UIView alloc]initWithFrame:CGRectMake(_uiViewSizesDatamodel.uiviewPermenantConnectionToSlidingUIViewModelFrameOriginex,
                                                                              _uiViewSizesDatamodel.uiviewPermenantConnectionToSlidingUIViewModelFrameOriginey,
                                                                              _uiViewSizesDatamodel.uiviewPermenantConnectionToSlidingUIViewModelFrameSizeWidth,
                                                                              (_uiViewSizesDatamodel.uiviewPermenantConnectionToSlidingUIViewModelFrameSizeHeight - _uiViewSizesDatamodel.logoUiButtonFrameSizeHeight))];
        // build a lable
        UILabel *nextVisist= [[UILabel alloc] initWithFrame:CGRectMake(0,0, 500, 500)];
        [nextVisist setText:@"This is the visit page "];
        [_uiButtonScheduledVisits.uiViewButtonDataModel setBackgroundColor:[UIColor grayColor]];


        [_uiButtonScheduledVisits.uiViewButtonDataModel insertSubview:nextVisist atIndex:0];

        //[_uIViewNNDBar.uiVIewNNDBarView addSubview:_uiButtonScheduledVisits.uiButtonReturnObject];

        //[_uIViewNNDBar.uiVIewNNDBarView addSubview:_uiButtonHome.uiButtonReturnObject];

        // End of the test#2

        //UIButtonDataModel *builder3 = [[UIButtonDataModel alloc]initWithXModel:self AndType:uiViewStructTypeCheckIn];

//- (instancetype)initWithXModel:(UIButtonDataModel*) model AndType: (uiVIewTypesStruct) type{



        [_uIViewNNDBar.uiVIewNNDBarView addSubview: [[UIButtonDataModel alloc]initWithXModel:self AndType:uiViewStructTypeCheckIn].uiButtonReturnObject];





        //[_uIViewNNDBar.uiVIewNNDBarView insertSubview:_uiButtonHome.uiButtonReturnObject atIndex:0 ];

        /*
         Author: Kian D.Rad
         Date: July 24th 2017
         README: 
            Initalize the UIView the permenant connection to the slidingUIViewModel. 
            This UIView, should be animated, dynamically to bring it any existing uiview that reslides in this class. 
            Those uiviews are part of the Uibutton. 
        */

        _uiviewPermenantConnectionToSlidingUIViewModel = [[UIView alloc]initWithFrame:CGRectMake(_uiViewSizesDatamodel.uiviewPermenantConnectionToSlidingUIViewModelFrameOriginex,
                                                                                                 _uiViewSizesDatamodel.uiviewPermenantConnectionToSlidingUIViewModelFrameOriginey,
                                                                                                 _uiViewSizesDatamodel.uiviewPermenantConnectionToSlidingUIViewModelFrameSizeWidth,
                                                                                                 _uiViewSizesDatamodel.uiviewPermenantConnectionToSlidingUIViewModelFrameSizeHeight)];
        [_uiviewPermenantConnectionToSlidingUIViewModel setBackgroundColor:_uiViewSizesDatamodel.uiviewPermenantConnectionToSlidingUIViewModelBackGroundColor];


    }
    return self;
}

- (UIView*)GetterUIViewNNDBar{

/*
 Author: Kian D.Rad
 Date:   July 14th 2017
 README: This is the getter, nothing special, only gets the model inizialized.
 ToDO:
 */

    return _uiVIewNNDBarView;


}

-(void) callBackFunctionUIButtonDataModel:(UIButton*) sender{
    /*
     Author: Kian D.Rad
     Date:   July 23th 2017
     README:    In this function I know which button was selected by user on the UIViewNNDBar. 
        Now, I have to load the appropriate UIView into _currentButtonSelector or a common UIView, 
        which behaves as a pointer. The UIView should have been already initated. And then you ask 
        UIView animation to buring that UIView into the template holder.
     ToDO:
        1- July 25th 2017: load the Home "UIView", keep reffernce to the componetns.
     */

    [self updateUiViewAnimcation:nil finished:nil context:nil  ];
    NSLog(@"delgate method at -(void) callBackFunctionUIButtonDataModelControllerDelegate; worked @%@", sender.titleLabel);
    
}






- (void)updateUiViewAnimcation:(NSString *)animationID finished:(NSNumber *)finished context:(void *)context {


    /*
     Author: Kian D.Rad
     Date:   July 23th 2017
     README:    In this function I know which button was selected by user on the UIViewNNDBar.
     Now, I have to load the appropriate UIView into _currentButtonSelector or a common UIView,
     which behaves as a pointer. The UIView should have been already initated. And then you ask
     UIView animation to buring that UIView into the template holder.
     ToDO:
     */

        [UIView animateWithDuration:0.25
                              delay:0.0
                            options:(UIViewAnimationCurveEaseInOut|UIViewAnimationOptionAllowUserInteraction)
                         animations:^{
                             [UIView setAnimationDelegate:self];

                             // This line also calls an other function upon completion too.
                             //[UIView setAnimationDidStopSelector:@selector(goDown:finished:context:)];
                             [_uiviewPermenantConnectionToSlidingUIViewModel setFrame:CGRectMake(_uiViewSizesDatamodel.uiviewPermenantConnectionToSlidingUIViewModelFrameOriginex,
                                                                                                 _uiViewSizesDatamodel.uiviewPermenantConnectionToSlidingUIViewModelFrameOriginey,
                                                                                                 _uiViewSizesDatamodel.uiviewPermenantConnectionToSlidingUIViewModelFrameSizeWidth,
                                                                                                 _uiViewSizesDatamodel.uiviewPermenantConnectionToSlidingUIViewModelFrameSizeHeight)];

                             [_uiviewPermenantConnectionToSlidingUIViewModel setBackgroundColor:[UIColor greenColor]];
                             //[_uiviewPermenantConnectionToSlidingUIViewModel addSubview:_uiButtonHome.uiViewButtonDataModel];
                             [_uiviewPermenantConnectionToSlidingUIViewModel addSubview:_uiButtonScheduledVisits.uiViewButtonDataModel];

                         }completion:^(BOOL finished){
                             NSLog(@"Face Up done");
                             
                         }];
        

}

@end
