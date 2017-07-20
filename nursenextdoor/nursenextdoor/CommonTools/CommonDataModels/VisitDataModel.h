//
//  VisitDataModel.h
//  nursenextdoor
//
//  Created by Kian Davoudi-Rad on 2017-07-17.
//  Copyright © 2017 Kian Davoudi-Rad. All rights reserved.
//

#ifndef VisitDataModel_h
#define VisitDataModel_h

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "NurseDataModel.h"
#import "ClientDataModel.h"


@class VisitDataModel;
@interface VisitDataModel:NSObject


@property(nonatomic, strong) ClientDataModel * client;
@end


#endif /* VisitDataModel_h */
