//
//  UIView+ASExtension.h
//  ASKit
//
//  Created by ASong on 2017/9/7.
//  Copyright © 2017年 ASong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (ASDotBlock)


/**
 通过block构建View

 @param block 用于构建view的block
 @return UIView
 */
+ (UIView *)as_viewWithBlock:(void (^) (UIView * maker))block;



/**
 设置视图背景色
 */
- (UIView *(^)(UIColor *))as_backgroundColor;
@end
