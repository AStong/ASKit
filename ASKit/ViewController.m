//
//  ViewController.m
//  ASKit
//
//  Created by ASong on 2017/9/7.
//  Copyright © 2017年 ASong. All rights reserved.
//

#import "ViewController.h"
#import "UIView+ASDotBlock.h"
#import "UITextField+ASDotBlock.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
   
    [UIView as_viewWithBlock:^(UIView *maker) {
        maker.as_frame(0, 0, 100, 100)
        .as_backgroundColor([UIColor cyanColor])
        .as_alpha(.5);
        [self.view addSubview:maker];
    }];
    

    
    [UITextField as_fieldWithBlock:^(UITextField *maker) {
        maker.as_backgroundColor([UIColor orangeColor])
        .as_frame(0,120,100,50)
        .as_alpha(0.3);
        
    
        
        [self.view addSubview:maker];
    }];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
