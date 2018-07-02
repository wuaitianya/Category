//
//  UIViewController+Common.h
//  PRZ-iOS-Category
//
//  Created by 雾霭天涯 on 2018/6/26.
//  Copyright © 2018年 雾霭天涯. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (Common)
-(void)addLeftButtonWithImageName:(NSString*)imageName;
-(void)addRightButtonWithImageName:(NSString*)imageName;

-(void)addRightButtonWithTitle:(NSString*)title;
-(void)addLeftButtonWithTitle:(NSString*)title;

- (void)addLeftButtonWithTitle:(NSString *)title WithImageName:(NSString *)imageName;

@end
