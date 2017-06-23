//
//  MainLandingUIView.m
//  nursenextdoor
//
//  Created by Kian Davoudi-Rad on 2017-06-22.
//  Copyright © 2017 Kian Davoudi-Rad. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MainLandingUIView.h"
#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
#import <UIKit/UIKit.h>

@implementation MainLandingUIView 




- (id)      init{
        /*
            Author: Kian D.Rad
            Date:   Jun 22nd 2017
            ReadMe: This is the main view. Eveything will come in and out within this space. 
                    Thus, the init will construct a member UIVivew. Once you init the class, 
                    then the UIView becomes consumable. Once
 
        */
    self = [super init];
    if (self) {
        _theMainLaningUIViewType = [[UIView alloc] init];


    }
    return self;
}


-(UIView*) testUIViewWorksWell{
    /*
     Author: Kian D.Rad
     Date:   Jun 22nd 2017
     ReadMe: This function will build a UIVIew with only one button, then returns the UIVIew to the main page

     */

    if (_theMainLaningUIViewType != NULL)
        return _theMainLaningUIViewType;

        else return [[UIView alloc] init];

}




@end
