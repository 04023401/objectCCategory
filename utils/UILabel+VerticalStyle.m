//
//  UILabel+VerticalStyle.m
//  UIlable字体居上
//
//  Created by chenergou on 2017/11/18.
//

#import "UILabel+VerticalStyle.h"
#import "NSObject+Swizzling.h"
static NSString *style = @"verticalStyle";
@implementation UILabel (VerticalStyle)
+(void)load{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        
        Class class =   objc_getClass("UILabel");
        [class methodSwizzlingWithOriginalSelector:@selector(textRectForBounds:limitedToNumberOfLines:) bySwizzledSelector:@selector(TextRectForBounds:limitedToNumberOfLines:) ];
        
          [class methodSwizzlingWithOriginalSelector:@selector(drawTextInRect:) bySwizzledSelector:@selector(DrawTextInRect:) ];
        
    });
}
-(void)setVerticalStyle:(VerticalAlignment)verticalStyle{
    
    objc_setAssociatedObject(self, &style, @(verticalStyle), OBJC_ASSOCIATION_ASSIGN);
    [self setNeedsDisplay];
}
-(VerticalAlignment)verticalStyle{
   id value =  objc_getAssociatedObject(self, &style);
    return [value intValue];
}

-(CGRect)TextRectForBounds:(CGRect)bounds limitedToNumberOfLines:(NSInteger)numberOfLines{
    CGRect textRect = [self TextRectForBounds:bounds limitedToNumberOfLines:numberOfLines];
    switch (self.verticalStyle) {
        case VerticalAlignmentTop:
            textRect.origin.y = bounds.origin.y;
            break;
        case VerticalAlignmentBottom:
            textRect.origin.y = bounds.origin.y + bounds.size.height - textRect.size.height;
            break;
        case VerticalAlignmentMiddle:
            // Fall through.
        default:
            textRect.origin.y = bounds.origin.y + (bounds.size.height - textRect.size.height) / 2.0;
    }
    return textRect;
}

-(void)DrawTextInRect:(CGRect)requestedRect {
    CGRect actualRect = [self textRectForBounds:requestedRect limitedToNumberOfLines:self.numberOfLines];
    [self DrawTextInRect:actualRect];
}


@end
