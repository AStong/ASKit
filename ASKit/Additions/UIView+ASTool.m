//
//  UIView+ASTool.m
//  ASKit
//
//  Created by ASong on 2017/9/7.
//  Copyright © 2017年 ASong. All rights reserved.
//

#import "UIView+ASTool.h"

@implementation UIView (ASTool)


+(UIView *)as_viewWithBlock:(void (^)(UIView *))block{
    UIView *view = [[UIView alloc] init];
    block(view);
    return view;
}

- (UIViewController *)as_viewController{
    
    UIResponder *next = self.nextResponder;
    do {
        if ([next isKindOfClass:[UIViewController class]]) {
            return (UIViewController *)next;
        }else{
            next = [next nextResponder];
        }
        
    } while (next != nil);
    return nil;
}


@end
