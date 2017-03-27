//
//  ScreenShotManager.m
//  HK_SnackApp
//
//  Created by Kython Shu on 2017/3/27.
//  Copyright © 2017年 jaycc.org. All rights reserved.
//

#import "ScreenShotManager.h"

@implementation ScreenShotManager

+ (UIImage*)getCaptureWithScrollView:(UIScrollView *)scrollView
{
    
    UIImage* viewImage = nil;
    UIGraphicsBeginImageContextWithOptions(scrollView.contentSize, scrollView.opaque, 0.0);
    {
        CGPoint savedContentOffset = scrollView.contentOffset;
        CGRect savedFrame = scrollView.frame;
        
        scrollView.contentOffset = CGPointZero;
        scrollView.frame = CGRectMake(0, 0, scrollView.contentSize.width, scrollView.contentSize.height);
        
        [scrollView.layer renderInContext: UIGraphicsGetCurrentContext()];
        viewImage = UIGraphicsGetImageFromCurrentImageContext();
        
        scrollView.contentOffset = savedContentOffset;
        scrollView.frame = savedFrame;
    }
    UIGraphicsEndImageContext();
    
    UIImageWriteToSavedPhotosAlbum(viewImage, nil, nil, nil);
    return viewImage;
}
@end
