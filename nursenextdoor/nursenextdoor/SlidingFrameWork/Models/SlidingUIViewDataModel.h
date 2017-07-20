//
//  SlidingUIViewDataModel.h
//  nursenextdoor
//
//  Created by Kian Davoudi-Rad on 2017-06-29.
//  Copyright © 2017 Kian Davoudi-Rad. All rights reserved.
//
/*
 Author: Kian D.Rad
 Date:   July 17th 2017
 README:
 */

#ifndef SlidingUIViewDataModel_h
#define SlidingUIViewDataModel_h



#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#import "UIViewNNDBar.h"
@class SlidingUIViewDataModel;


@interface SlidingUIViewDataModel : NSObject
/*
 Author: Kian D.Rad
 Date:   Jun 30th 2017
 README: The only UIView that travels is thet rightUIVIew.
        In order to keep the transition localized, we use two
        coorindates, A and B. A is the intial location of RighUIView
        and B respectively is the target location of RightUIView.
        At the Initalization, the A is the same as dynamic size of SuperView.
 ToDo: 
    - Build the following UIViews dynamically 
        1- UserProfiile 
        2- TakeExame
        3- Review Exams

 */


typedef struct masterUIViewDataStructure{
    __unsafe_unretained UIView  *View;
    __unsafe_unretained CGRect Frame;

}masterUIViewDataStructure;




// These screens are for Melanoma
@property(nonatomic, strong) UIView* uiViewUserProfile;
@property(nonatomic, strong) UIView* uiViewGoogleLogIn;
@property(nonatomic, strong) UIView* uiViewTakePicture;
@property(nonatomic, strong) UIView* uiViewMelanomaDBar;


// These screens are for NND
@property(nonatomic, strong) UIView* uiViewGeoHomeView;
@property(nonatomic, strong) UIView* uiViewGeoScheduledVisitsView;
@property(nonatomic, strong) UIView* uiViewGeoMapView;
@property(nonatomic, strong) UIView* uiViewGeoHelpView;
@property(nonatomic, strong) UIViewNNDBar* uiViewNNDBar;
@property(nonatomic, strong) SlidingUIViewDataModel* slidingUIViewDataModel;


/*
 Author: Kian D.Rad
 Date:   Jun 30th 2017
 README:
        This is the top UIVIew, this is the place that all other views will be deployed and removed.
        So, when the app opens, user sees this UIView first.
*/
@property(nonatomic, strong) UIView  *templateOfMasterUIView;


- (instancetype)initWithSlidingUIViewDataModel:(SlidingUIViewDataModel*) incomingSlidingUIViewDataModel;
-(id)callBackFunctionButton:(id)sender;

@end
#endif /* SlidingUIViewDataModel_h */
