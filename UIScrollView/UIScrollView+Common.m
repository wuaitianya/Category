//
//  UIScrollView+Common.m
//  PRZ-iOS-Category
//
//  Created by 雾霭天涯 on 2018/6/27.
//  Copyright © 2018年 雾霭天涯. All rights reserved.
//

#import "UIScrollView+Common.h"

@implementation UIScrollView (Common)
+(instancetype)initializeScrollViewWithFrame:(CGRect)frame withBgColor:(UIColor *)aColor withContentSize:(CGSize)aSize withSuperView:(UIView*)superView{
    UIScrollView *aScrollview = [[self alloc] initWithFrame:frame];
    aScrollview.contentSize = aSize;
    aScrollview.bounces = NO;
    aScrollview.backgroundColor = aColor;
    [superView addSubview:aScrollview];
    return aScrollview;
}
@end
