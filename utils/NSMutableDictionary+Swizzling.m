//
//  NSMutableDictionary+Swizzling.m
//  RunttimeLearn
//
//  Created by chenergou on 2017/10/11.
//

#import "NSMutableDictionary+Swizzling.h"
#import "NSObject+Swizzling.h"
@implementation NSMutableDictionary (Swizzling)
//+(void)load{
//    static dispatch_once_t onceToken;
//    dispatch_once(&onceToken, ^{
//
//        Class class =   objc_getClass("__NSDictionaryM");
//        [class methodSwizzlingWithOriginalSelector:@selector(setObject:forKey:) bySwizzledSelector:@selector(safeSetObject:forKey:) ];
//
//
//
//    });
//}
//- (void)safeSetObject:(id)obj forKey:(id)aKey {
//
//    if (obj == nil){
//
//        NSLog(@"%s 😊😊😊😊can add nil object into NSMutableArray", __FUNCTION__);
//    }
//    if (obj && aKey) {
//        [self safeSetObject:obj forKey:aKey];
//    }
//
//}
@end
