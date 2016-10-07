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
- (__kindof UIViewController * _Nonnull)initWithStoryboardName:(NSString  * _Nullable)storyboardName andIdentifier:(NSString * _Nullable)identifier;

@end
