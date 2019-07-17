//
//  Test1ViewController.m
//  IMGKitDemo
//
//  Created by Chris on 2019/7/10.
//  Copyright © 2019 Chris. All rights reserved.
//

#import "Test1ViewController.h"
#import <IMGRouter/IMGRouter.h>

@interface Test1ViewController ()


/// <#note#>
@property (nonatomic, copy) NSNumber *num;

@end

@implementation Test1ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSInteger aRedValue =arc4random() %255;
    NSInteger aGreenValue =arc4random() %255;
    NSInteger aBlueValue =arc4random() %255;
    UIColor*randColor = [UIColor colorWithRed:aRedValue /255.0f green:aGreenValue /255.0f blue:aBlueValue /255.0f alpha:1.0f];
    self.view.backgroundColor = randColor;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)setParameter:(NSDictionary *)parameter {
    [super setParameter:parameter];
    self.num = [parameter valueForKey:@"num"];
    NSLog(@"%@" ,self.num);
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
