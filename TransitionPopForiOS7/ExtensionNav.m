//
//  ExtensionNav.m
//  TransitionPopForiOS7
//
//  Created by xiazer on 15/4/1.
//  Copyright (c) 2015年 anjuke. All rights reserved.
//

#import "ExtensionNav.h"
#import "NavigationInteractiveTransition.h"

@interface ExtensionNav ()
@property (nonatomic, strong) NavigationInteractiveTransition *navT;
@end

@implementation ExtensionNav

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    UIGestureRecognizer *gesture = self.interactivePopGestureRecognizer;
    gesture.enabled = NO;
    UIView *gestureView = gesture.view;
    
    UIPanGestureRecognizer *popRecognizer = [[UIPanGestureRecognizer alloc] init];
    popRecognizer.delegate = self;
    popRecognizer.maximumNumberOfTouches = 1;
    [gestureView addGestureRecognizer:popRecognizer];
    
    _navT = [[NavigationInteractiveTransition alloc] initWithViewController:self];
    [popRecognizer addTarget:_navT action:@selector(handleControllerPop:)];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
