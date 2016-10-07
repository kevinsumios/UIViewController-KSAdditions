//
//  UIViewController+KSAdditions.m
//  Pods
//
//  Created by Kevin Sum on 06/10/2016.
//
//

#import "UIViewController+KSAdditions.h"

@implementation UIViewController (KSAdditions)
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wobjc-designated-initializers"
- (__kindof UIViewController * _Nonnull)initWithStoryboardName:(NSString  * _Nullable)storyboardName andIdentifier:(NSString * _Nullable)identifier {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:storyboardName?storyboardName:@"Main" bundle:nil];
    return [storyboard instantiateViewControllerWithIdentifier:identifier?identifier:NSStringFromClass([self class])];
}
#pragma clang diagnostic pop

@end
