###NavigationInteractiveTransition 实现iOS7系统手势返回效果
###效果图
见iOS7 系统自带原生手势滑动返回，但是控制区域在左侧10px位置，本demo支持viewController全部区域
![Mou icon](https://raw.githubusercontent.com/kingundertree/ExtensionNavGesForiOS7/master/extension.gif)

###github地址

https://github.com/kingundertree/TransitionPopForiOS7-

###主要功能
1. 模拟iOS手势滑动返回效果
2. 只支持iOS7 及以上版本

###实现思路
1. 设法截取系统手势事件，UINavgationController的interactivePopGestureRecognizer
2. 通过ISO7提供的转场动画事件NavigationInteractiveTransition，创建新的action
3. 在action中计算progress，分别实现updateInteractiveTransition、finishInteractiveTransition、cancelInteractiveTransition事件即可

###使用方法
1. 继承ExtensionNav即可