//
//  GeoDataModel.h
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

#ifndef GeoDataModel_h
#define GeoDataModel_h

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class GeoDataModel;
@interface GeoDataModel : NSObject

typedef struct {
    __unsafe_unretained UIButton  *bringOnSlidingMenueUIButtonStruct;
    __unsafe_unretained UIGestureRecognizer *tapGestureStruct;

}GeoDataModelStruct;


@end



#endif /* GeoDataModel_h */
