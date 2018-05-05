//
//  UILabel+VerticalStyle.h
//  UIlable字体居上
//
//  Created by chenergou on 2017/11/18.
//

#import <UIKit/UIKit.h>
typedef enum
{
    
     VerticalAlignmentMiddle = 0, // default
    VerticalAlignmentTop,
    VerticalAlignmentBottom,
} VerticalAlignment;
@interface UILabel (VerticalStyle)
@property(nonatomic,assign)VerticalAlignment verticalStyle;
/**
 *  设置button的titleLabel和imageView的布局样式，及间距
 *
 *  @param style titleLabel和imageView的布局样式
 *  @param space titleLabel和imageView的间距
 */
//- (void)layoutLabelWithStyle:(VerticalAlignment)style;

@end
