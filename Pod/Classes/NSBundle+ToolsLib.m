//
//  NSBundle+ToolsLib.m
//  Pods
//
//  Created by 景彦铭 on 2017/8/1.
//
//

#import "NSBundle+ToolsLib.h"

@implementation NSBundle (ToolsLib)
    
+ (NSBundle *)my_myLibraryBundle {
    return [self bundleWithURL:[self my_myLibraryBundleURL]];
}
    
    
+ (NSURL *)my_myLibraryBundleURL {
    NSBundle *bundle = [NSBundle bundleForClass: NSClassFromString(@"ViewController")];
    return [bundle URLForResource:@"ToolsLib" withExtension:@"bundle"];
}
    
    
@end
