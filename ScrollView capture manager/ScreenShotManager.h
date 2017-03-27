//
//  ScreenShotManager.h
//  HK_SnackApp
//
//  Created by Kython Shu on 2017/3/27.
//  Copyright © 2017年 jaycc.org. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScreenShotManager : NSObject
+ (UIImage*)getCaptureWithScrollView:(UIScrollView *)scrollView;
@end
