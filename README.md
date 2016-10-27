# UIViewController+KSAdditions
Category of UIViewController for efficient development.

# Functions

1. Init UIViewController with storyboard name and identifier.

    ``` objc
    - (__kindof UIViewController * _Nonnull)KS_initWithStoryboardName:(NSString  * _Nullable)storyboardName andIdentifier:(NSString * _Nullable)identifier;
    ```
2. UIPopoverController like popover function.

    ``` objc
    - (void)KS_presentPopoverFromRect:(CGRect)rect inView:(UIView * _Nonnull)view permittedArrowDirections:(UIPopoverArrowDirection)arrowDirections animated:(BOOL)animated byViewController:(UIViewController * _Nullable)viewcontroller completion:(void  (^ _Nullable )(void))block;
    ```
    ``` objc
    - (void)KS_presentPopoverFromBarButtonItem:(UIBarButtonItem * _Nonnull)item permittedArrowDirections:(UIPopoverArrowDirection)arrowDirections animated:(BOOL)animated byViewController:(UIViewController * _Nullable)viewcontroller completion:(void  (^ _Nullable )(void))block;
    ```
3. Get the current visble top view controller globally

    ``` objc
    + (__kindof UIViewController * _Nonnull)KS_topViewController;
    ```
