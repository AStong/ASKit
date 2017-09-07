//
//  UIView+ASExtension.m
//  ASKit
//
//  Created by ASong on 2017/9/7.
//  Copyright © 2017年 ASong. All rights reserved.
//

#import "UIView+ASDotBlock.h"

@implementation UIView (ASDotBlock)


+(UIView *)as_viewWithBlock:(void (^)(UIView *))block{
    UIView *view = [[UIView alloc] init];
    block(view);
    return view;
}


-(UIView *(^)(CGFloat, CGFloat, CGFloat, CGFloat))as_frame{
    return ^id(CGFloat x, CGFloat y, CGFloat weith, CGFloat height){
        self.frame = CGRectMake(x, y, weith, height);
        return self;
    };
}

-(UIView *(^)(UIColor *))as_backgroundColor{
    return ^id(UIColor *color){
        self.backgroundColor = color;
        return self;
    };
}


-(UIView *(^)(CGFloat))as_alpha{
    return ^id(CGFloat alpha){
        self.alpha = alpha;
        return self;
    };
}


@end
