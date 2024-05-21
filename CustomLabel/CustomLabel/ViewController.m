//
//  ViewController.m
//  CustomLabel
//
//  Created by DerrickMac on 2024/5/13.
//

#import "ViewController.h"
#import "CTMediator+FFLabel.h"
//#import "FFBaseLabel.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UILabel *label = [[CTMediator sharedInstance] createLabelWithText:@"Que Sera Sera" textColor:UIColor.blueColor SuccessBlock:nil failedBlock:nil];
    label.frame = CGRectMake(100, 100, 200, 20);
    [self.view addSubview:label];
    
//    FFBaseLabel *label = [[FFBaseLabel alloc] initWithFrame:CGRectMake(100, 100, 200, 20)];
//    [self.view addSubview:label];
}


@end
