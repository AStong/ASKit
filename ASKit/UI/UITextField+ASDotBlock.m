//
//  UITextField+ASDotBlock.m
//  ASKit
//
//  Created by ASong on 2017/9/7.
//  Copyright © 2017年 ASong. All rights reserved.
//

#import "UITextField+ASDotBlock.h"

@implementation UITextField (ASDotBlock)

+ (UITextField *)as_fieldWithBlock:(void(^)(UITextField *))block{
    UITextField *field = [[UITextField alloc] init];
    block(field);
    return field;
}

- (UITextField *(^)(NSString *))as_text{
    return ^id (NSString * text){
        self.text = text;
        return self;
    };
}

- (UITextField * (^)(UIColor *))as_textColor{
    return ^id(UIColor *color){
        
        self.textColor = color;
        
        return self;
    };
}
@end
