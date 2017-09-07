//
//  UITextField+ASDotBlock.h
//  ASKit
//
//  Created by ASong on 2017/9/7.
//  Copyright © 2017年 ASong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITextField (ASDotBlock)

+ (UITextField *)as_fieldWithBlock:(void(^)(UITextField *maker))block;

- (UITextField *(^)(NSString *))as_text;

- (UITextField * (^)(UIColor *))as_textColor;
@end
