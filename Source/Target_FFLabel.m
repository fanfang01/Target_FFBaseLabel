//
//  Target_FFLabel.m
//  FFLabel
//
//  Created by DerrickMac on 2024/5/9.
//

#import "Target_FFLabel.h"
#import "FFBaseLabel.h"

@implementation Target_FFLabel
- (id)Action_CreateCustomeLabel:(NSDictionary *)parameter {
    NSString *text = parameter[@"text"];
    UIColor *textColor = parameter[@"textColor"];

    FFBaseLabel *label = [[FFBaseLabel alloc] init];
    label.text = text;
    label.textColor = textColor;
    return label;

}
@end
