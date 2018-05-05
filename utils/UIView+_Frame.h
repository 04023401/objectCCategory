//
//  UIView+_Frame.h
//  AliPayHome
//
//  Created by chenergou on 2017/10/31.
//

#import <UIKit/UIKit.h>

@interface UIView (_Frame)
@property (assign, nonatomic) CGFloat _x;
@property (assign, nonatomic) CGFloat _y;
@property (assign, nonatomic) CGFloat _width;
@property (assign, nonatomic) CGFloat _height;

@property (assign, nonatomic) CGFloat _left;
@property (assign, nonatomic) CGFloat _top;
@property (assign, nonatomic) CGFloat _right;
@property (assign, nonatomic) CGFloat _bottom;

@property (assign, nonatomic) CGSize _size;
@property (assign, nonatomic) CGFloat _centerX;
@property (assign, nonatomic) CGFloat _centerY;


/**
 * Removes all subviews.
 */
- (void)_removeAllSubviews;

/**
 * The view controller whose view contains this view.
 */
- (UIViewController*)_ViewController;
@end
