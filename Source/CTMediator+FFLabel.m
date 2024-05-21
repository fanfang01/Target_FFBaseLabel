//
//  CTMediator+FFLabel.m
//  FFLabel
//
//  Created by DerrickMac on 2024/5/8.
//

#import "CTMediator+FFLabel.h"

/*------------------ 自选股模块 -------------*/
NSString *const kTGMediatorTargetCustomLabel = @"FFLabel";

// ActionName -- 执行的方法名称
NSString *const kPortfolioActionCustomeLabel = @"CreateCustomeLabel";

@implementation CTMediator (FFLabel)
- (UILabel *)createLabelWithText:(NSString *)text textColor:(UIColor *)textColor SuccessBlock:(SuccessBlock)successBlock failedBlock:(FailedBlock)failedBlock{
    
    NSMutableDictionary *parameter = [NSMutableDictionary dictionary];
    parameter[@"successB"] = successBlock;
    parameter[@"failB"] = failedBlock;
    parameter[@"text"] = text;
    parameter[@"textColor"] = textColor;
    
    UILabel *label = [self performTarget:kTGMediatorTargetCustomLabel action:kPortfolioActionCustomeLabel params:parameter shouldCacheTarget:NO];
    return label;
}

@end
