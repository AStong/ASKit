//
//  ViewController.m
//  ASKit
//
//  Created by ASong on 2017/9/7.
//  Copyright © 2017年 ASong. All rights reserved.
//

#import "ViewController.h"
#import "UIView+ASDotBlock.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
   
    [UIView as_viewWithBlock:^(UIView *maker) {
        maker.frame = CGRectMake(0, 0, 100, 100);
        maker.as_backgroundColor([UIColor cyanColor]);
        [self.view addSubview:maker];
    }];
    
    [UITextField as_viewWithBlock:^(UIView *maker) {
        maker.frame = CGRectMake(100, 64, 100, 40);
        maker.as_backgroundColor([UIColor orangeColor]);
     
        [self.view addSubview:maker];
    }];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
