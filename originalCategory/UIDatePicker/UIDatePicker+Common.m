//
//  UIDatePicker+Common.m
//  PRZ-iOS-Category
//
//  Created by alex black on 2018/6/29.
//  Copyright © 2018年 雾霭天涯. All rights reserved.
//

#import "UIDatePicker+Common.h"

@implementation UIDatePicker (Common)
+(instancetype)initializePickerWithFrame:(CGRect)frame withPickerMode:(NSInteger)mode withSelector:(SEL)selector withTarget:(id)target withSuperView:(UIView*)superView{
    
    UIDatePicker* datePicker = [[self alloc] initWithFrame:frame];
    datePicker.datePickerMode = mode;
    // 设置日期选择控件的地区
    [datePicker setLocale:[[NSLocale alloc]initWithLocaleIdentifier:@"zh_Hans_CN"]];
    //设置DatePicker的时区。解决相差8小时的误差
    [datePicker setTimeZone:[NSTimeZone timeZoneWithAbbreviation:@"UTC"]];
    //设置DatePicker的日期。
    //[datePicker setDate:[NSDate date]];
    [datePicker addTarget:target action:selector forControlEvents:UIControlEventValueChanged];
    [superView addSubview:datePicker];
    return datePicker;
}
@end
