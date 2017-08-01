//
//  UIImage+ToolsLib.m
//  Pods
//
//  Created by 景彦铭 on 2017/8/1.
//
//

#import "UIImage+ToolsLib.h"
#import "NSBundle+ToolsLib.h"
@implementation UIImage (ToolsLib)


+ (UIImage *)my_bundleImageNamed:(NSString *)name {
    return [self my_imageNamed:name inBundle:[NSBundle my_myLibraryBundle]];
}
    
    
+ (UIImage *)my_imageNamed:(NSString *)name inBundle:(NSBundle *)bundle {
#if __IPHONE_OS_VERSION_MIN_REQUIRED >= __IPHONE_8_0
    return [UIImage imageNamed:name inBundle:bundle compatibleWithTraitCollection:nil];
#elif __IPHONE_OS_VERSION_MAX_ALLOWED < __IPHONE_8_0
    return [UIImage imageWithContentsOfFile:[bundle pathForResource:name ofType:@"png"]];
#else
    if ([UIImage respondsToSelector:@selector(imageNamed:inBundle:compatibleWithTraitCollection:)]) {
        return [UIImage imageNamed:name inBundle:bundle compatibleWithTraitCollection:nil];
    } else {
        return [UIImage imageWithContentsOfFile:[bundle pathForResource:name ofType:@"png"]];
    }
#endif
}

@end
