//
//  Ocr.h
//  FaceSDK
//
//  Created by fisher hk on 2018/5/10.
//  Copyright © 2018年 fisher hk. All rights reserved.
//

#import <Foundation/Foundation.h>

@class UserInfo;

@interface Ocr : NSObject
@property (nonatomic, assign) BOOL validateSDK;

+ (instancetype)shared;
- (void)validateSDKService;
- (BOOL)canGetSDKService;

/**
 身份证图形信息识别接口

 @param type 身份证正反照 0:人像面 1:国徽面 不传默认为 0
 @param photoStr 身份证图片数据 imageData base64EncodedString
 @param timeOut timeOut 超时回调
 @param success 成功回调 返回 UserInfo
 @param failure 失败回调
 */
- (void)IdentifyIDCard:(NSInteger)type photoStr:(NSString *)photoStr timeOut:(void (^)(void))timeOut success:(void (^ _Nonnull)(UserInfo *userInfo))success failure:(void (^)(NSError *error, NSString *mssg))failure;

@end

@interface UserInfo : NSObject

@property (nonatomic, copy) NSString *address;
@property (nonatomic, copy) NSString *birthday;
@property (nonatomic, copy) NSString *certid;
@property (nonatomic, copy) NSString *fork;

@property (nonatomic, copy) NSString *identyId;
@property (nonatomic, copy) NSString *issue_authority;
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *sex;

@property (nonatomic, assign) NSInteger type;
@property (nonatomic, copy) NSString *vaild_priod;

@end
