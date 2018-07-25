//
//  UIImageView+Common.m
//  PRZ-iOS-Category
//
//  Created by 雾霭天涯 on 2018/6/27.
//  Copyright © 2018年 雾霭天涯. All rights reserved.
//

#import "UIImageView+Common.h"

@implementation UIImageView (Common)
+(instancetype)initializeImageViewWithFrame:(CGRect)frame withImage:(UIImage *)image withSuperView:(UIView*)superView;{
    UIImageView *aImageView = [[self alloc] initWithFrame:frame];
    if (image) {
        aImageView.image = image;
    }
    [superView addSubview:aImageView];
    return aImageView;
}
@end
