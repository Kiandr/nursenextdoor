//
//  SlidingUIViewDataModel.m
//  nursenextdoor
//
//  Created by Kian Davoudi-Rad on 2017-06-29.
//  Copyright © 2017 Kian Davoudi-Rad. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SlidingUIViewDataModel.h"

@implementation SlidingUIViewDataModel: NSObject

/*
 Author: Kian D.Rad
 Date: July 14th 2017
 README: The following classes are UIVIews and callBackFunctions to manage in and out transition
 ToDo:

 */
- (instancetype)init {
    self = [super init];
    if (self) {


    }
    return self;
}
- (instancetype)initWithSlidingUIViewDataModel:(UiViewSizesDatamodel*) uncomingUiViewSizesDatamodel{
    /*

     Author: Kian D.Rad
     Date: Jun30th2017
     README: This function sets all coordinates for the UIView funamendal layers.

     */

    self = [super init];
    if (self) {


        @try {
            /*
             Author: Kian D.Rad
             Date: July 25th 2017
             README: This function sets all coordinates for the UIView funamendal layers.
             Note: I could have used the application size, but I rather use a strongly bounded data model.
             */

            _uiViewSizesDatamodel = uncomingUiViewSizesDatamodel;
            _templateOfMasterUIView = [[UIView alloc]initWithFrame:CGRectMake(_uiViewSizesDatamodel.templateOfMasterUIViewFrameOriginex,
                                                                              _uiViewSizesDatamodel.templateOfMasterUIViewlFrameOriginey,
                                                                              _uiViewSizesDatamodel.templateOfMasterUIViewlFrameSizeWidth,
                                                                              _uiViewSizesDatamodel.templateOfMasterUIViewFrameSizeHeight )];


            // Color is also stronly bonded, pre-built in a defined location. You can view on one eye all the colour sections in that class

            [_templateOfMasterUIView setBackgroundColor: _uiViewSizesDatamodel.templateOfMasterUIViewBackGroundColor];



            // Sets the pointer, else pointer witll die and will be null, thus stackoverflow
            _uiViewNNDBar = [[UIViewNNDBar alloc] initWithDataModel:_uiViewNNDBar AndSizesDataModel:_uiViewSizesDatamodel];
            _templateOfMasterUIView = _uiViewNNDBar.uiviewPermenantConnectionToSlidingUIViewModel;


            _slidingUIViewDataModel = self;

        }
        @catch (NSException *exception) {
            NSLog(@" Error at SlidingUIViewDataModel.m function setUpUIViewFrameSizeA %@", exception.reason);
        }



    }
    return self;

}



/*
 Author: Kian D.Rad
 Date: July 14th 2017
 README:Tester to observe the callBackfunction being invoked by an other class
 ToDo:

 */
- (id)callBackFunctionButton:(id)sender{


    [self goUp:nil finished:nil context:nil];


    return nil;

}
- (void)showHideDidStop:(NSString *)animationID finished:(NSNumber *)finished context:(void *)context {
    /*
     Author: Kian D.RAd
     Date:   Jun 30th 2017
     README: This is a delegate like method that informs me, when the transition or
     animation have been completed. So based on this accurately take the next step */

    // Set book value to false, so the progam knows that the transition was finished.
    // This is for internal use, if you wanna use publicly use, the Objective C method.


    // Test Animation
    [UIView beginAnimations:@"ShowHideView2" context:nil];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseOut];
    [UIView setAnimationDuration:0.25];
    [UIView setAnimationDelay:2.5];

    //_rightUiView.alpha = 2.0;
    _templateOfMasterUIView.frame = [UIApplication sharedApplication].delegate.window.frame;

    [UIView commitAnimations];


}

- (void)goDown:(NSString *)animationID finished:(NSNumber *)finished context:(void *)context {

    [UIView animateWithDuration:0.25
                          delay:3.0
                        options:(UIViewAnimationOptionAllowUserInteraction)
                     animations:^{
                         [UIView setAnimationDelegate:self];
                         // Completion selector. Multiple ways of doing the same thing.
                         // [UIView setAnimationDidStopSelector:@selector(moveToLeft:finished:context:)];
                         // This line also calls an other function upon completion too.
                         //[UIView setAnimationDidStopSelector:@selector(goDown:finished:context:)];
                         _templateOfMasterUIView.frame = CGRectMake(_uiViewSizesDatamodel.uiviewPermenantConnectionToSlidingUIViewModelFrameOriginex,
                                                                    _uiViewSizesDatamodel.uiviewPermenantConnectionToSlidingUIViewModelFrameOriginey,
                                                                    _uiViewSizesDatamodel.uiviewPermenantConnectionToSlidingUIViewModelSlideUpLocationFrameSizeWidth,
                                                                    _uiViewSizesDatamodel.uiviewPermenantConnectionToSlidingUIViewModelSlideUpLocationFrameSizeHeight );


                     }completion:^(BOOL finished){
                         NSLog(@"Face left done");

                     }];

}



- (void)goUp:(NSString *)animationID finished:(NSNumber *)finished context:(void *)context {

    [UIView animateWithDuration:0.25
                          delay:0.0
                        options:(UIViewAnimationCurveEaseInOut|UIViewAnimationOptionAllowUserInteraction)
                     animations:^{
                         [UIView setAnimationDelegate:self];

                         // This line also calls an other function upon completion too.
                         //[UIView setAnimationDidStopSelector:@selector(goDown:finished:context:)];
                         _templateOfMasterUIView.frame = CGRectMake(_uiViewSizesDatamodel.uiviewPermenantConnectionToSlidingUIViewModelSlideUpLocationFrameOriginex,
                                                                    _uiViewSizesDatamodel.uiviewPermenantConnectionToSlidingUIViewModelSlideUpLocationFrameOriginey,
                                                                    _uiViewSizesDatamodel.uiviewPermenantConnectionToSlidingUIViewModelSlideUpLocationFrameSizeWidth,
                                                                    _uiViewSizesDatamodel.uiviewPermenantConnectionToSlidingUIViewModelSlideUpLocationFrameSizeHeight );

                     }completion:^(BOOL finished){
                         NSLog(@"Face Up done");
                         
                     }];
    
}


@end
