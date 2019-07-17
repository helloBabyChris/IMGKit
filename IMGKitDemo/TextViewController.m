//
//  TextViewController.m
//  IMGKitDemo
//
//  Created by Chris on 2019/7/10.
//  Copyright © 2019 Chris. All rights reserved.
//

#import "TextViewController.h"
#import <IMGRouter/IMGRouter.h>

@interface TextViewController ()

@end

@implementation TextViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIView *vie = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 200, 200)];
    vie.alpha = 0;
    vie.center = self.view.center;
    vie.backgroundColor = [UIColor yellowColor];
    vie.tag = 100;
    [self.view addSubview:vie];
    [UIView animateWithDuration:0.4 animations:^{
        vie.alpha = 1;
    } completion:^(BOOL finished) {
        
    }];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeInfoLight];
    button.center = CGPointMake(100, 200);
    [button addTarget:self action:@selector(button) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void)button {
    void (^completion)(void) = ^() {
        NSLog(@"113131");
    };
    int a = arc4random() % 244 + 10;
    [IMGRouter openURL:@"Test1ViewController" parameter:@{IMGRouterParameterPresentCompletion : completion, @"num" : @(a)}];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [UIView animateWithDuration:0.4 animations:^{
        UIView *view = [self.view viewWithTag:100];
        view.alpha = 0;
    } completion:^(BOOL finished) {
        UIView *view = [self.view viewWithTag:100];
        [view removeFromSuperview];
        [self dismissViewControllerAnimated:NO completion:nil];
    }];
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
