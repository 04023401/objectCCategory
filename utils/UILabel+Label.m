//
//  UILabel+Label.m
//  testTryCatch
//
//  Created by chuanglong02 on 16/7/15.
//  Copyright © 2016年 chuanglong02. All rights reserved.
//

#import "UILabel+Label.h"

@implementation UILabel (Label)
+(UILabel *)LabelWithText:(NSString *)text textColor:(UIColor *)textColor backgroundColor:(UIColor *)backgroundColor frame:(CGRect)frame font:(UIFont *)font textAlignment:(NSTextAlignment)textAlignment
{
    UILabel *label =[[UILabel alloc]init];
    label.textAlignment = textAlignment;
    label.text = text;
    label.backgroundColor = backgroundColor;
    label.frame= frame;
    label.font = font;
    label.textColor = textColor;
    return label;
}
+(UILabel *)LabelWithTextNoFrame:(NSString *)text textColor:(UIColor *)textColor backgroundColor:(UIColor *)backgroundColor font:(UIFont *)font textAlignment:(NSTextAlignment)textAlignment{
    UILabel *label =[[UILabel alloc]init];
    label.textAlignment = textAlignment;
    label.text = text;
    label.backgroundColor = backgroundColor;
    label.font = font;
    label.textColor = textColor;
    return label;
}
@end
