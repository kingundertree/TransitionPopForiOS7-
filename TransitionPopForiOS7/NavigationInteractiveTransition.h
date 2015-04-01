//
//  NavigationInteractiveTransition.h
//  TransitionPopForiOS7
//
//  Created by xiazer on 15/4/1.
//  Copyright (c) 2015年 anjuke. All rights reserved.
//

#import <UIKit/UIKit.h>

@class UIViewController, UIPercentDrivenInteractiveTransition;
@interface NavigationInteractiveTransition : NSObject <UINavigationControllerDelegate>

- (instancetype)initWithViewController:(UIViewController *)vc;

- (void)handleControllerPop:(UIPanGestureRecognizer *)recognizer;
- (UIPercentDrivenInteractiveTransition *)interactivePopTransition;
@end