//
//  UIView+Cornerdious.h
//  testDemo
//
//  Created by 漫漫 on 2018/4/4.
//  Copyright © 2018年 刘新新. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Cornerdious)
-(void)setCornerdious:(CGFloat)cornerdious;//设置全部圆角

-(void)setBorderWidth:(CGFloat)borderWidth borderColor:(UIColor *)borderColor;//设置border 以及color
@end
