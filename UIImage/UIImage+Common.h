//
//  UIImage+Common.h
//  PRZ-iOS-Category
//
//  Created by 雾霭天涯 on 2018/6/26.
//  Copyright © 2018年 雾霭天涯. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum{
    kCodePatternForBarCode = 0,//条形码，一维码
    kCodePatternForQRCode = 1//二维码
}kCodePattern;

@interface UIImage (Common)
#pragma mark - 常用
//获取 在线视频 缩略图    注意要在分线程中操作
+ (UIImage *)getThumbnailImageFromOnlineVideoURL:(NSString *)fileurl;
//获取 本地视频 缩略图    注意要在分线程中操作
-(UIImage *)getThumbnailImageFromLocalVideo:(NSString *)videoPath;

//由颜色生成图片
+ (UIImage *) imageWithColor:(UIColor*)color;

//将图片剪裁至目标尺寸
+ (UIImage *) imageByScalingAndCroppingForSourceImage:(UIImage *)sourceImage targetSize:(CGSize)targetSize;




//图片旋转角度
- (UIImage *) imageRotatedByDegrees:(CGFloat)degrees;
#pragma mark - 图片的模糊化
//玻璃化效果，这里与系统的玻璃化枚举效果一样，但只是一张图
- (UIImage *)imageByBlurSoft;

- (UIImage *)imageByBlurLight;

- (UIImage *)imageByBlurExtraLight;

- (UIImage *)imageByBlurDark;

- (UIImage *)imageByBlurWithTint:(UIColor *)tintColor;

- (UIImage *)imageByBlurRadius:(CGFloat)blurRadius
                     tintColor:(UIColor *)tintColor
                      tintMode:(CGBlendMode)tintBlendMode
                    saturation:(CGFloat)saturation
                     maskImage:(UIImage *)maskImage;

- (UIImage *) boxblurImageWithBlur:(CGFloat)blur exclusionPath:(UIBezierPath *)exclusionPath;

#pragma mark - 生成二维码/条形码
/**
 *  生成二维码
 *
 *  @param string  二维码字符串
 *  @param size    图片宽度 height = width
 *  @param color   二维码颜色
 *  @param pattern code类型
 *
 *  @return self
 */
+ (instancetype)imageForCodeString:(NSString *)string size:(CGFloat)size color:(UIColor *)color pattern:(kCodePattern)pattern;

@end


#pragma mark - 图片使用到的颜色类别
@interface UIColor (Zirkfied)
@property (nonatomic, assign, readonly) CGFloat red;
@property (nonatomic, assign, readonly) CGFloat green;
@property (nonatomic, assign, readonly) CGFloat blue;
@property (nonatomic, assign, readonly) CGFloat alpha;
@end
