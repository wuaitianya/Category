//
//  UIWebView+Common.m
//  PRZ-iOS-Category
//
//  Created by alex black on 2018/6/28.
//  Copyright © 2018年 雾霭天涯. All rights reserved.
//

#import "UIWebView+Common.h"

@implementation UIWebView (Common)

+(instancetype)initializeWebViewWithFrame:(CGRect)frame withUrlStr:(NSString*)urlStr withSuperView:(UIView*)superView{
    UIWebView * aWebView = [[self alloc] initWithFrame:frame];
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:urlStr]];
    [aWebView loadRequest:request];
    [superView addSubview:aWebView];
    return aWebView;
}
@end
