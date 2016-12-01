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
+ (__kindof UIViewController * _Nonnull)KS_initWithStoryboardName:(NSString  * _Nullable)storyboardName andIdentifier:(NSString * _Nullable)identifier {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:storyboardName?storyboardName:@"Main" bundle:nil];
    return [storyboard instantiateViewControllerWithIdentifier:identifier?identifier:NSStringFromClass([self class])];
}

#pragma clang diagnostic pop

#pragma mark - UIPopoverController like popover function
- (void)KS_presentPopoverFromRect:(CGRect)rect inView:(UIView * _Nonnull)view permittedArrowDirections:(UIPopoverArrowDirection)arrowDirections animated:(BOOL)animated byViewController:(UIViewController * _Nullable)viewcontroller completion:(void  (^ _Nullable )(void))block {
    self.modalPresentationStyle = UIModalPresentationPopover;
    self.popoverPresentationController.sourceRect = rect;
    self.popoverPresentationController.sourceView = view;
    if (viewcontroller) {
        [viewcontroller presentViewController:self animated:animated completion:^{
            if (block) {
                block();
            }
        }];
    } else {
        [[UIViewController KS_topViewController] presentViewController:self animated:animated completion:^{
            if (block) {
                block();
            }
        }];
    }
}

- (void)KS_presentPopoverFromBarButtonItem:(UIBarButtonItem * _Nonnull)item permittedArrowDirections:(UIPopoverArrowDirection)arrowDirections animated:(BOOL)animated byViewController:(UIViewController * _Nullable)viewcontroller completion:(void  (^ _Nullable )(void))block {
    self.modalPresentationStyle = UIModalPresentationPopover;
    self.popoverPresentationController.barButtonItem = item;
    if (viewcontroller) {
        [viewcontroller presentViewController:self animated:animated completion:^{
            if (block) {
                block();
            }
        }];
    } else {
        [[UIViewController KS_topViewController] presentViewController:self animated:animated completion:^{
            if (block) {
                block();
            }
        }];
    }
}

#pragma mark - Get the current visble top view controller globally
+ (__kindof UIViewController * _Nonnull)KS_topViewController {
    UIViewController *rootViewController = [UIApplication sharedApplication].keyWindow.rootViewController;
    return [UIViewController KS_topViewControllerInRootViewController:rootViewController];
}

+ (__kindof UIViewController * _Nonnull)KS_topViewControllerInRootViewController:(__kindof UIViewController * _Nonnull)rootViewController {
    if ([rootViewController isKindOfClass:[UITabBarController class]]) {
        // Tab bar controller
        UITabBarController *tabBarController = (UITabBarController *)rootViewController;
        return [UIViewController KS_topViewControllerInRootViewController:tabBarController.selectedViewController];
    } else if ([rootViewController isKindOfClass:[UINavigationController class]]) {
        // Navigation controller
        UINavigationController *navController = (UINavigationController *)rootViewController;
        return [UIViewController KS_topViewControllerInRootViewController:navController.visibleViewController];
    } else if (rootViewController.presentedViewController) {
        // Presenting view controller
        UIViewController *presentedViewController = rootViewController.presentedViewController;
        return [UIViewController KS_topViewControllerInRootViewController:presentedViewController];
    } else
        return rootViewController;
}

@end
