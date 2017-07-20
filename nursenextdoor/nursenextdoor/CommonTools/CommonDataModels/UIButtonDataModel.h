//
//  UIButtonDataModel.h
//  nursenextdoor
//
//  Created by Kian Davoudi-Rad on 2017-07-19.
//  Copyright © 2017 Kian Davoudi-Rad. All rights reserved.
//

#ifndef UIButtonDataModel_h
#define UIButtonDataModel_h

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@class UIButtonDataModel;
@interface UIButtonDataModel : NSObject

typedef struct {}UIButtonDataModelStruct;

@property (strong, nonatomic) NSString * titleString;
@property (strong, nonatomic) id *callBackFunction;
@property (strong, nonatomic) CGPoint *cgPoints;

@end


#endif /* UIButtonDataModel_h */
