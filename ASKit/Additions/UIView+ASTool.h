//
//  UIView+ASTool.h
//  ASKit
//
//  Created by ASong on 2017/9/7.
//  Copyright © 2017年 ASong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (ASTool)

/**
 通过block构建UIView
 
 @param block 用于构建view的block
 @return UIView
 */
+ (UIView *)as_viewWithBlock:(void (^) (UIView * maker))block;



/**
 获取视图所在的控制器

 @return 如果没有,返回为 nil
 */
- (UIViewController *)as_viewController;
@end
