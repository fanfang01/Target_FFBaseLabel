//
//  CTMediator+FFLabel.h
//  FFLabel
//
//  Created by DerrickMac on 2024/5/8.
//

#import <CTMediator/CTMediator.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
typedef void(^SuccessBlock)(void);
typedef void(^FailedBlock)(void);

@interface CTMediator (FFLabel)
- (UILabel *)createLabelWithText:(NSString *)text textColor:(UIColor *)textColor SuccessBlock:(SuccessBlock)successBlock failedBlock:(FailedBlock)failedBlock;
@end

NS_ASSUME_NONNULL_END
