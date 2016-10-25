//
//  UIViewController+KSAdditions.h
//  Pods
//
//  Created by Kevin Sum on 06/10/2016.
//
//

#import <UIKit/UIKit.h>

@interface UIViewController (KSAdditions)
// initialize view controller in refer from story board
// by default, use main as the storyboard name and
// the view controller class name as the identifier
- (__kindof UIViewController * _Nonnull)KS_initWithStoryboardName:(NSString  * _Nullable)storyboardName andIdentifier:(NSString * _Nullable)identifier;

// UIPopoverController like popover function
// It will use the current top view controller to
// popover the presentation controller by default
// however, it is recomand to specify the controler
// by yourself
- (void)KS_presentPopoverFromRect:(CGRect)rect inView:(UIView * _Nonnull)view permittedArrowDirections:(UIPopoverArrowDirection)arrowDirections animated:(BOOL)animated byViewController:(UIViewController * _Nullable)viewcontroller completion:(void  (^ _Nullable )(void))block;
- (void)KS_presentPopoverFromBarButtonItem:(UIBarButtonItem * _Nonnull)item permittedArrowDirections:(UIPopoverArrowDirection)arrowDirections animated:(BOOL)animated byViewController:(UIViewController * _Nullable)viewcontroller completion:(void  (^ _Nullable )(void))block;

// Get the current visble top view controller globally
+ (__kindof UIViewController * _Nonnull)KS_topViewController;
@end
