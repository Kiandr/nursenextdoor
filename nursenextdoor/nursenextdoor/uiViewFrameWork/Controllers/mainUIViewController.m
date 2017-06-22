//
//  UIViewManager.m
//  callMe
//
//  Created by Kian Davoudi-Rad on 2017-03-14.
//  Copyright © 2017 Kian Davoudi-Rad. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
//#import "UITableViewControllerCustimized.h"
#import "mainUIViewController.h"
#import "UIViewFrameWorkModel.h"
@import Firebase;
@import FirebaseCore;
@import GoogleSignIn;

@implementation mainUIViewController
- (instancetype)init
{
    self = [super init];
    if (self) {

    }
    return self;
}


-(UIView*)  mainViewInit:           (UIViewFrameWorkModel*)     localUIViewFrameWorkModel setBrandColour:(UIColor*) locBrandColour{
    UIView *tempView = [[UIView alloc] init];
    tempView.backgroundColor = locBrandColour;
    tempView.frame = CGRectMake(localUIViewFrameWorkModel.uiMainViewFrameOriginex,localUIViewFrameWorkModel.uiMainViewFrameOriginey, localUIViewFrameWorkModel.uiMainViewFrameSizeWidth,localUIViewFrameWorkModel.uiMainViewFrameSizeHeight);
    // build Brand Header
    [tempView addSubview:[self addBrandHeader:localUIViewFrameWorkModel]];
    // build Date Picker
    [tempView addSubview:[self addDatePicker:localUIViewFrameWorkModel]];
    // build Date Picker
    [tempView addSubview:[self addBrandFooter:localUIViewFrameWorkModel]];
    // build TableView
    [tempView addSubview:[self addUITableView:localUIViewFrameWorkModel]];

    

    return tempView;
}
-(UIView*)  mainViewInitForGoogle:  (UIViewFrameWorkModel*)     localUIViewFrameWorkModel setBrandColour:(UIColor*) locBrandColour{
    UIView *tempView = [[UIView alloc] init];
    tempView.backgroundColor = locBrandColour;
    tempView.frame = CGRectMake(localUIViewFrameWorkModel.uiMainViewFrameOriginex,localUIViewFrameWorkModel.uiMainViewFrameOriginey, localUIViewFrameWorkModel.uiMainViewFrameSizeWidth,localUIViewFrameWorkModel.uiMainViewFrameSizeHeight);
    // build Brand Header
    [tempView addSubview:[self addBrandHeader:localUIViewFrameWorkModel]];
    // build Google Single Sing In Button

    [tempView addSubview:[self addGSSIButton:localUIViewFrameWorkModel]];



    return tempView;
}

-(UIView*)  mainViewUserProfile:  (UIViewFrameWorkModel*)     localUIViewFrameWorkModel setBrandColour:(UIColor*) locBrandColour{
    UIView *tempView = [[UIView alloc] init];
    tempView.backgroundColor = locBrandColour;
    tempView.frame = CGRectMake(localUIViewFrameWorkModel.uiMainViewFrameOriginex,localUIViewFrameWorkModel.uiMainViewFrameOriginey, localUIViewFrameWorkModel.uiMainViewFrameSizeWidth,localUIViewFrameWorkModel.uiMainViewFrameSizeHeight);
    // build Brand Header
    [tempView addSubview:[self addBrandHeader:localUIViewFrameWorkModel]];
    // build Google Single Sing In Button

    [tempView addSubview:[self addUerProfile:localUIViewFrameWorkModel]];



    return tempView;
}
-(UIView*)  addUITableView:         (UIViewFrameWorkModel*)     localUIViewFrameWorkModel {
    UITableView *localUITableView = [[UITableView alloc]initWithFrame:CGRectMake(localUIViewFrameWorkModel.uiTableViewFrameOriginex , localUIViewFrameWorkModel.uiTableViewFrameOriginey , localUIViewFrameWorkModel.uiTableViewFrameSizeWidth, localUIViewFrameWorkModel.uiTableViewFrameSizeHeight ) style:UITableViewCellStyleSubtitle];
    localUITableView.backgroundColor = _nNDBrandColour;
    localUITableView.dataSource = self;
    localUITableView.delegate = self;

    return localUITableView;
}
-(UIView*)  addBrandFooter:         (UIViewFrameWorkModel*)     localUIViewFrameWorkModel {

    UIView * uiBrandFooterView = [[UIView alloc] initWithFrame:CGRectMake(localUIViewFrameWorkModel.uiFrameFooterFrameOriginex , localUIViewFrameWorkModel.uiFrameFooterFrameOriginey , localUIViewFrameWorkModel.uiFrameFooterFrameSizeWidth, localUIViewFrameWorkModel.uiFrameFooterFrameSizeHeight)];
    uiBrandFooterView.backgroundColor = [UIColor blueColor];

    UIButton *upcomingVisistsButton = [UIButton buttonWithType:UIButtonTypeSystem];
    upcomingVisistsButton.frame = CGRectMake(localUIViewFrameWorkModel.uiUpcomingVisistsButtonFrameOriginex,localUIViewFrameWorkModel.uiUpcomingVisistsButtonFrameOriginey,localUIViewFrameWorkModel.uiFrameFooterFrameSizeWidth,localUIViewFrameWorkModel.uiFrameFooterFrameSizeHeight);
    upcomingVisistsButton.backgroundColor = [UIColor clearColor];
    // This shall be localized for various languages
    NSString *UpcomingVisits = [[NSString alloc] initWithFormat:@"upcoming visits"];

    [upcomingVisistsButton setTitle:UpcomingVisits forState:UIControlStateNormal];
    [upcomingVisistsButton setTintColor:[UIColor whiteColor]];
    [upcomingVisistsButton addTarget:self  action:@selector(upcomingVisistsButtonCallBackFunction:) forControlEvents:UIControlEventTouchDown];
    [uiBrandFooterView addSubview:upcomingVisistsButton];

    return uiBrandFooterView;
}
-(void)     upcomingVisistsButtonCallBackFunction:(id*)     sender                    {

    [_UIDatePickerGlobarlVar setDate:[NSDate date]];
    // Update and refresh content of tableView

}
-(UIView*)  addDatePicker:          (UIViewFrameWorkModel*)     localUIViewFrameWorkModel {
    UIView* datePickerView = [[UIView alloc]initWithFrame:CGRectMake(localUIViewFrameWorkModel.uiDatePickerFrameOriginex, localUIViewFrameWorkModel.uiDatePickerFrameOriginey, localUIViewFrameWorkModel.uiDatePickerFrameSizeWidth,localUIViewFrameWorkModel.uiDatePickerFrameSizeHeight)];

    datePickerView.backgroundColor = [UIColor greenColor];
    UIDatePicker *datePicker = [[UIDatePicker alloc] initWithFrame:CGRectMake(localUIViewFrameWorkModel.uiDatePickerOriginex, localUIViewFrameWorkModel.uiDatePickerOriginey, localUIViewFrameWorkModel.uiDatePickerSizeWidth, localUIViewFrameWorkModel.uiDatePickerSizeHeight)];
    datePicker.backgroundColor = [UIColor yellowColor];
    [datePicker setDatePickerMode:UIDatePickerModeDate];
    [datePickerView addSubview:datePicker];
    _UIDatePickerGlobarlVar = datePicker;

    return datePickerView;
}
-(UIView*)  addBrandHeader:         (UIViewFrameWorkModel*)     localUIViewFrameWorkModel {

    UIView* brandHeaderView = [[UIView alloc]initWithFrame:CGRectMake(localUIViewFrameWorkModel.uiBrandHeaderFrameOriginex, localUIViewFrameWorkModel.uiBrandHeaderFrameOriginey, localUIViewFrameWorkModel.uiBrandHeaderFrameSizeWidth,localUIViewFrameWorkModel.uiBrandHeaderFrameSizeHeight)];

    UIImageView *brandIconImageFrameHolder =[[UIImageView alloc]initWithFrame:CGRectMake(localUIViewFrameWorkModel.uiBrandIconFrameOriginex, localUIViewFrameWorkModel.uiBrandIconFrameOriginey , localUIViewFrameWorkModel.uiBrandIconFrameSizeWidth , localUIViewFrameWorkModel.uiBrandIconFrameSizeHeight)];

    brandIconImageFrameHolder.image = [UIImage imageNamed:@"NNDIcon.png"];
    // Debugger, remove for production
    brandHeaderView.backgroundColor= [UIColor grayColor];
    [brandHeaderView addSubview:brandIconImageFrameHolder];

    return brandHeaderView;

}
-(UIColor*) setnNDBrandColour                                                         {
    UIColor *locBrandColor;
    @try
    {

        locBrandColor = [UIColor colorWithRed:236.0f green:0.0f blue:139.0f alpha:1.0f];
        _nNDBrandColour = locBrandColor;
    }

    @catch (NSException *exception)
    {
         NSLog(@"%@", exception.reason);
    }
    return locBrandColor;
}
-(UIViewFrameWorkModel*) setOriginesOfWindow                                          {

    UIViewFrameWorkModel * localUIViewFrameWorkModel = [[UIViewFrameWorkModel alloc]init];

    @try {
        UIWindow* windowView = [UIApplication sharedApplication].delegate.window;
        localUIViewFrameWorkModel.uiMainViewFrameOriginex              = windowView.frame.origin.x;
        localUIViewFrameWorkModel.uiMainViewFrameOriginey              = windowView.frame.origin.y     +([[UIApplication sharedApplication] statusBarFrame].size.height);
        localUIViewFrameWorkModel.uiMainViewFrameSizeWidth             = windowView.frame.size.width;
        localUIViewFrameWorkModel.uiMainViewFrameSizeHeight            = windowView.frame.size.height  -([[UIApplication sharedApplication] statusBarFrame].size.height);

        // BrandHeader
        localUIViewFrameWorkModel.uiBrandHeaderFrameOriginex           = windowView.frame.origin.x;
        localUIViewFrameWorkModel.uiBrandHeaderFrameOriginey           = windowView.frame.origin.y;
        localUIViewFrameWorkModel.uiBrandHeaderFrameSizeWidth          = windowView.frame.size.width;
        localUIViewFrameWorkModel.uiBrandHeaderFrameSizeHeight         = 40;

        // BrandIcon
        localUIViewFrameWorkModel.uiBrandIconFrameOriginex             = (localUIViewFrameWorkModel.uiBrandHeaderFrameSizeWidth/2)-20;
        localUIViewFrameWorkModel.uiBrandIconFrameOriginey             = windowView.frame.origin.y;
        localUIViewFrameWorkModel.uiBrandIconFrameSizeWidth            = 40;
        localUIViewFrameWorkModel.uiBrandIconFrameSizeHeight           =   localUIViewFrameWorkModel.uiBrandHeaderFrameSizeHeight ;

        // DatePickerFrame
        localUIViewFrameWorkModel.uiDatePickerFrameOriginex             = windowView.frame.origin.x;
        localUIViewFrameWorkModel.uiDatePickerFrameOriginey             = windowView.frame.origin.y+ localUIViewFrameWorkModel.uiBrandIconFrameSizeHeight;
        localUIViewFrameWorkModel.uiDatePickerFrameSizeWidth            = windowView.frame.size.width;
        localUIViewFrameWorkModel.uiDatePickerFrameSizeHeight           = windowView.frame.size.height/5;

        // DatePicker
        localUIViewFrameWorkModel.uiDatePickerOriginex                  = windowView.frame.origin.x;
        localUIViewFrameWorkModel.uiDatePickerOriginey                  = windowView.frame.origin.y;
        localUIViewFrameWorkModel.uiDatePickerSizeWidth                 = windowView.frame.size.width;
        localUIViewFrameWorkModel.uiDatePickerSizeHeight                = windowView.frame.size.height/5;

        // FrameFooter
        localUIViewFrameWorkModel.uiFrameFooterFrameOriginex             = windowView.frame.origin.x;
        localUIViewFrameWorkModel.uiFrameFooterFrameOriginey             = localUIViewFrameWorkModel.uiDatePickerFrameOriginey + localUIViewFrameWorkModel.uiDatePickerFrameSizeHeight ;
        localUIViewFrameWorkModel.uiFrameFooterFrameSizeWidth            = windowView.frame.size.width;
        localUIViewFrameWorkModel.uiFrameFooterFrameSizeHeight           = localUIViewFrameWorkModel.uiBrandHeaderFrameSizeHeight ;

        //upcomingVisistsButton
        localUIViewFrameWorkModel.uiUpcomingVisistsButtonFrameOriginex             = windowView.frame.origin.x;
        localUIViewFrameWorkModel.uiUpcomingVisistsButtonFrameOriginey             = windowView.frame.origin.y;
        localUIViewFrameWorkModel.uiUpcomingVisistsButtonFrameSizeWidth            = windowView.frame.size.width;
        localUIViewFrameWorkModel.uiUpcomingVisistsButtonFrameSizeHeight           = localUIViewFrameWorkModel.uiFrameFooterFrameSizeHeight;

        //googleSingleSingInButtonFrameOriginex
        localUIViewFrameWorkModel.googleSingleSingInButtonFrameOriginex             = windowView.frame.origin.x;
        localUIViewFrameWorkModel.googleSingleSingInButtonFrameOriginey             = windowView.frame.origin.y;
        localUIViewFrameWorkModel.googleSingleSingInButtonFrameSizeWidth            = windowView.frame.size.width;
        localUIViewFrameWorkModel.googleSingleSingInButtonFrameSizeHeight           = localUIViewFrameWorkModel.uiFrameFooterFrameSizeHeight ;



        //uiUpcomingVisistsButtonFrameOriginex
        localUIViewFrameWorkModel.uiUpcomingVisistsButtonFrameOriginex             = windowView.frame.origin.x;
        localUIViewFrameWorkModel.uiUpcomingVisistsButtonFrameOriginey             = windowView.frame.origin.y;
        localUIViewFrameWorkModel.uiUpcomingVisistsButtonFrameSizeWidth            = windowView.frame.size.width;
        localUIViewFrameWorkModel.uiUpcomingVisistsButtonFrameSizeHeight           = localUIViewFrameWorkModel.uiFrameFooterFrameSizeHeight;


        // UITableView
        localUIViewFrameWorkModel.uiTableViewFrameOriginex = 0;
        localUIViewFrameWorkModel.uiTableViewFrameOriginey =        localUIViewFrameWorkModel.uiFrameFooterFrameOriginey+ localUIViewFrameWorkModel.uiUpcomingVisistsButtonFrameSizeHeight ;
        localUIViewFrameWorkModel.uiTableViewFrameSizeWidth = windowView.frame.size.width;
        localUIViewFrameWorkModel.uiTableViewFrameSizeHeight = windowView.frame.size.height- localUIViewFrameWorkModel.uiFrameFooterFrameSizeHeight  - localUIViewFrameWorkModel.uiDatePickerSizeHeight - localUIViewFrameWorkModel.uiBrandHeaderFrameSizeHeight - ([[UIApplication sharedApplication] statusBarFrame].size.height);

        // UITableViewCell
        localUIViewFrameWorkModel.uiTableViewRowHeight= 150.0f;

        //cell.textLabel.frame

        localUIViewFrameWorkModel.cellTextLabelFrameOriginesX= 0;
        localUIViewFrameWorkModel.cellTextLabelFrameOriginesY= 0;
        localUIViewFrameWorkModel.cellTextLabelFrameSizeWidth= 50;
        localUIViewFrameWorkModel.cellTextLabelFrameSizeHeight= 50;




    }
    @catch (NSException *exception) {
        NSLog(@"%@", exception.reason);
    }

    return localUIViewFrameWorkModel;
}
//addGSSIButton
-(UIView*)  addGSSIButton:     (UIViewFrameWorkModel*)     localUIViewFrameWorkModel {



    /*

     // The various layout styles supported by the GIDSignInButton.
     // The minimum size of the button depends on the language used for text.
     // The following dimensions (in points) fit for all languages:
     // kGIDSignInButtonStyleStandard: 230 x 48
     // kGIDSignInButtonStyleWide:     312 x 48
     // kGIDSignInButtonStyleIconOnly: 48 x 48 (no text, fixed size)
     typedef NS_ENUM(NSInteger, GIDSignInButtonStyle) {
     kGIDSignInButtonStyleStandard = 0,
     kGIDSignInButtonStyleWide = 1,
     kGIDSignInButtonStyleIconOnly = 2
     };

     // The various color schemes supported by the GIDSignInButton.
     typedef NS_ENUM(NSInteger, GIDSignInButtonColorScheme) {
     kGIDSignInButtonColorSchemeDark = 0,
     kGIDSignInButtonColorSchemeLight = 1
     };

     // This class provides the "Sign in with Google" button. You can instantiate this
     // class programmatically or from a NIB file.  You should set up the
     // |GIDSignIn| shared instance with your client ID and any additional scopes,
     // implement the delegate methods for |GIDSignIn|, and add this button to your
     // view hierarchy.
     @interface GIDSignInButton : UIControl

     // The layout style for the sign-in button.
     // Possible values:
     // - kGIDSignInButtonStyleStandard: 230 x 48 (default)
     // - kGIDSignInButtonStyleWide:     312 x 48
     // - kGIDSignInButtonStyleIconOnly: 48 x 48 (no text, fixed size)
     @property(nonatomic, assign) GIDSignInButtonStyle style;

     // The color scheme for the sign-in button.
     // Possible values:
     // - kGIDSignInButtonColorSchemeDark
     // - kGIDSignInButtonColorSchemeLight (default)
     @property(nonatomic, assign) GIDSignInButtonColorScheme colorScheme;
     */

    // View that holds the button
    UIView * uiBrandFooterView = [[UIView alloc] initWithFrame:CGRectMake(localUIViewFrameWorkModel.uiFrameFooterFrameOriginex , localUIViewFrameWorkModel.uiFrameFooterFrameOriginey , localUIViewFrameWorkModel.uiFrameFooterFrameSizeWidth, localUIViewFrameWorkModel.uiFrameFooterFrameSizeHeight)];
    uiBrandFooterView.backgroundColor = [UIColor clearColor];

    // Build a custimized Google button, Google SDK is required to compile this.
    GIDSignInButton *googleSingleSingInButton = [[GIDSignInButton alloc]init];
    googleSingleSingInButton.frame = CGRectMake(localUIViewFrameWorkModel.uiUpcomingVisistsButtonFrameOriginex,localUIViewFrameWorkModel.uiUpcomingVisistsButtonFrameOriginey,localUIViewFrameWorkModel.uiFrameFooterFrameSizeWidth,localUIViewFrameWorkModel.uiFrameFooterFrameSizeHeight);

    googleSingleSingInButton.colorScheme = kGIDSignInButtonColorSchemeDark;
    googleSingleSingInButton.style =  kGIDSignInButtonStyleWide;

    [uiBrandFooterView addSubview:googleSingleSingInButton];
    
    return uiBrandFooterView;
}
 // addUerProfile
-(UIView*)  addUerProfile:     (UIViewFrameWorkModel*)     localUIViewFrameWorkModel {



    // View that holds the button
    UIView * uiBrandFooterView = [[UIView alloc] initWithFrame:CGRectMake(localUIViewFrameWorkModel.uiFrameFooterFrameOriginex , localUIViewFrameWorkModel.uiFrameFooterFrameOriginey , localUIViewFrameWorkModel.uiFrameFooterFrameSizeWidth, localUIViewFrameWorkModel.uiFrameFooterFrameSizeHeight)];
    uiBrandFooterView.backgroundColor = [UIColor clearColor];




    return uiBrandFooterView;
}
 #pragma UITableViewDataSource
-(NSInteger)        numberOfSectionsInTableView:    (UITableView *)             theTableView                                                    {
    float numberOfRows = 0;
    @try {

        numberOfRows = _frameWorkModel.uiTableViewRowNumber; // but it calls the function
    } @catch (NSException *exception) {
        NSLog(@"%@", exception.reason);
    } @finally {
        numberOfRows = 1;
    }
    return numberOfRows;
}
-(NSInteger)        tableView:                      (UITableView *)             theTableView numberOfRowsInSection:(NSInteger)      section     {
    return 2;
}
-(UITableViewCell*) tableView:                      (UITableView *)             tableView cellForRowAtIndexPath:(NSIndexPath*)      indexPath   {
    return [self UITableViewcellBuildAndShape:_frameWorkModel];
}
-(UITableViewCell*) UITableViewcellBuildAndShape:   (UIViewFrameWorkModel*)     localUIViewFrameWorkModel                                       {

    UITableViewCell *cell = NULL;


    @try {

        cell = [_uITableViewComponent dequeueReusableCellWithIdentifier:@"MyCell"];


    } @catch (NSException *exception) {
         NSLog(@"%@", exception.reason);
    }
    @finally {

        if(cell == nil)
        {
            cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"MyCell"];
        }

    }



        _uITableViewComponent.rowHeight = localUIViewFrameWorkModel.uiTableViewRowHeight;
        cell.textLabel.frame = CGRectMake(localUIViewFrameWorkModel.cellTextLabelFrameOriginesX,localUIViewFrameWorkModel.cellTextLabelFrameOriginesY,localUIViewFrameWorkModel.cellTextLabelFrameSizeWidth,localUIViewFrameWorkModel.cellTextLabelFrameSizeHeight);
        cell.textLabel.text = @"John Oliver";

       return cell;

}
-(void)             tableView:                      (UITableView *)theTableView didSelectRowAtIndexPath:    (NSIndexPath*)          indexPath   {
    NSLog(@"selected  %@ row",indexPath );}

#pragma Google custimized view
- (UIView*) buildFirstPageViewAddGoogleSingInButton{

    // Set the Brand Colour
    _nNDBrandColour = [UIColor colorWithRed:236.0f green:0.0f blue:139.0f alpha:1.0f];

    return ([self mainViewInitForGoogle:[self setOriginesOfWindow] setBrandColour:_nNDBrandColour]);
};

#pragma UserProfile
- (UIView*) buildUserProfile{

    // Set the Brand Colour
    _nNDBrandColour = [UIColor colorWithRed:236.0f green:0.0f blue:139.0f alpha:1.0f];

    return ([self mainViewUserProfile:[self setOriginesOfWindow] setBrandColour:_nNDBrandColour]);



};
@end

/*
 Notes:
    // Refference:                          http://stackoverflow.com/questions/30728062/add-views-in-uistackview-programmatically
    // How to change to a date only mode    http://stackoverflow.com/questions/15119565/showing-a-particular-date-in-uidatepicker-in-uidatepickermodedate-on-the-iphone
 */


