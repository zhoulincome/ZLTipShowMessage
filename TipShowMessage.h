//
//  TipShowMessage.h
//  StaffManagement
//
//  Created by victor on 15-3-31.
//  Copyright (c) 2015年 四川昂德投资有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TipShowMessage : UIView

+(void)showMessage:(NSString *)message;
//message :消息  显示在中间
+(void)showMessage:(NSString *)message delayTime:(float)delayTime;
//showYOffset y的偏移量
+(void)showMessage:(NSString *)message showYOffset:(float)showYOffset delayTime:(float)delayTime;

+(void)showMessage:(NSString *)message maxSize:(CGSize)maxSize showFrame:(CGRect)showFrame delayTime:(float)delayTime;
/*
 message：消息内容
 labelcolor:字体颜色
 backColor:背景颜色
 labelFont:显示字体
 */
+(void)showMessage:(NSString *)message labelcolor:(UIColor *)labelcolor backImage:(UIColor *)backColor labelFont:(UIFont *)labelFont delayTime:(float)delayTime;
/*
 message：消息内容
 labelcolor:字体颜色
 backColor:背景颜色
 labelFont:显示字体
 maxSize:设置cgsize
 showFrame：显示frame
 */
+(void)showMessage:(NSString *)message labelcolor:(UIColor *)labelcolor backImage:(UIColor *)backColor labelFont:(UIFont *)labelFont maxSize:(CGSize)maxSize showFrame:(CGRect)showFrame delayTime:(float)delayTime;

//计算文字大小
+(CGSize)sizeWithFont:(UIFont *)font maxSize:(CGSize)maxSize message:(NSString *)mesaage;


@end
