//
//  UIPickerView+Common.m
//  PRZ-iOS-Category
//
//  Created by alex black on 2018/6/28.
//  Copyright © 2018年 雾霭天涯. All rights reserved.
//

#import "UIPickerView+Common.h"

@implementation UIPickerView (Common)
+(instancetype)initializePickerWithFrame:(CGRect)frame withDelegate:(id)delegate withBgColor:(UIColor *)aColor withSuperView:(UIView*)superView{
    UIPickerView *aPickerView =[[self alloc]initWithFrame:frame];
    aPickerView.backgroundColor = aColor;
    if (delegate) {
        aPickerView.delegate = delegate;
        aPickerView.dataSource = delegate;
    }
    [superView addSubview: aPickerView];
    return aPickerView;
}
@end
