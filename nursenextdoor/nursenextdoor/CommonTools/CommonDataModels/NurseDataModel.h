//
//  NurseDataModel.h
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


#ifndef NurseDataModel_h
#define NurseDataModel_h

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "VisitDataModel.h"
#import "ProcuraDateModel.h"
#import "GeoDataModel.h"

@class NurseDataModel;
@interface NurseDataModel : NSObject

//typedef struct {
//    __unsafe_unretained UIButton  *bringOnSlidingMenueUIButtonStruct;
//    __unsafe_unretained UIGestureRecognizer *tapGestureStruct;
//
//}NurseDataModelStruct;

@property (nonatomic, strong) NSString * name;
@property (nonatomic, strong) NSString * lastName;
@property (nonatomic, strong) NSString * employeeId;
@property (nonatomic, strong) NSString * cellPhoneNumber;
@property (nonatomic, strong) VisitDataModel * nextUpcomingVisit;
@property (nonatomic, strong) NSMutableArray<VisitDataModel *>* listOfTodayVisits;
@property (nonatomic, strong) ProcuraDateModel * nurseProcuraDataModel;
@property (nonatomic, strong) GeoDataModel * currentGeoLocation;

@end

#endif /* NurseDataModel_h */
