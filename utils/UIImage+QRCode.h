//
//  UIImage+QRCode.h
//  QRCode
//

//

#import <UIKit/UIKit.h>

@interface UIImage (QRCode)
//普通的二维码
+(UIImage *)_ImageOfQRFromURL:(NSString *)urlStr codeSize:(CGFloat)codeSize;

//带logo 的二维码
+(UIImage *)_ImageOfQRFromURL:(NSString *)urlStr codeSize:(CGFloat)codeSize logoName:(NSString *)logoName  radius: (CGFloat)radius borderWidth:(CGFloat)borderWidth borderColor:(UIColor *)borderColor;
@end
