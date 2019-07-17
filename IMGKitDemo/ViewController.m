//
//  ViewController.m
//  IMGKitDemo
//
//  Created by Chris on 2019/7/9.
//  Copyright © 2019 Chris. All rights reserved.
//

#import "ViewController.h"
#import <IMGCategory/IMGCategory.h>
#import "TextViewController.h"
#import <IMGRouter/IMGRouter.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    TextViewController *viewController = [[TextViewController alloc] init];
    [viewController img_show];
}


@end
