//
//  ClientDataModel.h
//  nursenextdoor
//
//  Created by Kian Davoudi-Rad on 2017-07-17.
//  Copyright © 2017 Kian Davoudi-Rad. All rights reserved.
//
/*
 Author: Kian D.Rad
 Date:   July 17th 2017
 README:
 */

#ifndef ClientDataModel_h
#define ClientDataModel_h
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class ClientDataModel;
@interface ClientDataModel : NSObject

typedef struct {
    __unsafe_unretained UIButton  *bringOnSlidingMenueUIButtonStruct;
    __unsafe_unretained UIGestureRecognizer *tapGestureStruct;

}ClientDataModelStruct;

@end

#endif /* ClientDataModel_h */
