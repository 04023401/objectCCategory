//
//  UIView+_Frame.m
//  AliPayHome
//
//  Created by chenergou on 2017/10/31.
//

#import "UIView+_Frame.h"

@implementation UIView (_Frame)
-(void)set_x:(CGFloat)_x{
        CGFloat y = self.frame.origin.y;
        CGFloat width = self.frame.size.width;
        CGFloat height = self.frame.size.height;
        self.frame = CGRectMake(_x, y, width, height);
}
-(CGFloat)_x{
    return self.frame.origin.x;
}
-(void)set_y:(CGFloat)_y{
    CGFloat x = self.frame.origin.x;
    CGFloat width = self.frame.size.width;
    CGFloat height = self.frame.size.height;
    self.frame = CGRectMake(x, _y, width, height);
}
-(CGFloat)_y{
    return self.frame.origin.y;
}
-(void)set_width:(CGFloat)_width{
    CGRect frame = self.frame;
    frame.size.width = _width;
    self.frame = frame;
}
-(CGFloat)_width{
    return self.frame.size.width;
}

-(void)set_height:(CGFloat)_height{
    CGRect frame = self.frame;
    frame.size.height = _height;
    self.frame = frame;
}

-(CGFloat)_height{
    return self.frame.size.height;
}


-(void)set_left:(CGFloat)_left{
    CGFloat y = self.frame.origin.y;
    CGFloat width = self.frame.size.width;
    CGFloat height = self.frame.size.height;
    self.frame = CGRectMake(_left, y, width, height);
}
-(CGFloat)_left{
    return self.frame.origin.x;
}


-(void)set_top:(CGFloat)_top{
    CGFloat x = self.frame.origin.x;
    CGFloat width = self.frame.size.width;
    CGFloat height = self.frame.size.height;
    self.frame = CGRectMake(x, _top, width, height);
}
-(CGFloat)_top{
    return self.frame.origin.y;
}
-(void)set_right:(CGFloat)_right{
    CGRect frame = self.frame;
    frame.origin.x = _right - frame.size.width;
    self.frame = frame;
}
-(CGFloat)_right{
    return self.frame.origin.x + self.frame.size.width;
}
-(void)set_bottom:(CGFloat)_bottom{
    CGRect frame = self.frame;
    frame.origin.y = _bottom - frame.size.height;
    self.frame = frame;
}
-(CGFloat)_bottom{
     return self.frame.origin.y + self.frame.size.height;
}

-(CGSize)_size {
    return self.frame.size;
}

- (void)set_size:(CGSize)_size {
    CGRect frame = self.frame;
    frame.size = _size;
    self.frame = frame;
}
-(CGFloat)_centerX{
    return self.center.x;
}
-(void)set_centerX:(CGFloat)_centerX{
    
    self.center = CGPointMake(_centerX, self.center.y);
   
}
-(CGFloat)_centerY{
    return self.center.y;

}
-(void)set_centerY:(CGFloat)_centerY{
    self.center = CGPointMake(self.center.x, _centerY);
}

/**
 * Removes all subviews.
 */
- (void)_removeAllSubviews{
    while (self.subviews.count) {
        UIView* child = self.subviews.lastObject;
        [child removeFromSuperview];
    }
}

/**
 * The view controller whose view contains this view.
 */
- (UIViewController*)_ViewController{
    for (UIView* next = [self superview]; next; next = next.superview) {
        UIResponder* nextResponder = [next nextResponder];
        if ([nextResponder isKindOfClass:[UIViewController class]]) {
            return (UIViewController*)nextResponder;
        }
    }
    return nil;
}
@end
