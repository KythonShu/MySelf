//
//  UIBarButtonItem+KSExtension.h
//  SlideMenu
//
//  Created by Kython Shu on 2017/3/22.
//  Copyright © 2017年 Kython Shu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (KSExtension)
+ (instancetype)itemWithImage:(NSString *)image highLightImage:(NSString *)highLightImage target:(id)target action:(SEL)action;
+ (instancetype)itemWithTitle:(NSString *)title target:(id)target action:(SEL)action;
@end
