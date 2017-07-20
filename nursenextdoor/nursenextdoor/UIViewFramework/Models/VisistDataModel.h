//
//  VisistDataModel.h
//  nursenextdoor
//
//  Created by Kian Davoudi-Rad on 2017-07-17.
//  Copyright © 2017 Kian Davoudi-Rad. All rights reserved.
//
/*
 Author: Kian D.Rad
 Date: July 17th 2017
 README: Content of this datamodel is being used to transfer necessary data between 
    WebApi and the App. These data are unified accross the syste. the main items are 
    nurse data, visit data from Procura and  location data from gps framework.
 */

#ifndef VisistDataModel_h
#define VisistDataModel_h

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "BaseModelVisitData.h"

// Common tools Reffernces
#import "NurseDataModel.h"
#import "ClientDataModel.h"
#import "GeoDataModel.h"

@class VisistDataModel;
@interface VisistDataModel : NSObject

//
@property(nonatomic, strong) NurseDataModel* nurseData;
@property(nonatomic, strong) VisistDataModel* clientData;
@property(nonatomic, strong) GeoDataModel* GeoData;

@end


#endif /* VisistDataModel_h */
