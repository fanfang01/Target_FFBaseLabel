//
//  Face.h
//  FaceSDK
//
//  Created by fisher hk on 2018/5/10.
//  Copyright © 2018年 fisher hk. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface Face : NSObject

@property (nonatomic, copy) NSString *app_id;//app_id
@property (nonatomic, copy) NSString *app_scret;//app_secret

+ (instancetype)shared;


@end
