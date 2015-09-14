//
//  TipShowMessage.m
//  StaffManagement
//
//  Created by victor on 15-3-31.
//  Copyright (c) 2015年 ZL. All rights reserved.
//

#define APP_MAIN_SCREEN_WIDTH   [[UIScreen mainScreen] bounds].size.width
#define APP_MAIN_SCREEN_HEIGHT  [[UIScreen mainScreen] bounds].size.height
#import "TipShowMessage.h"
#import "UIColor+colorWithExadecimal.h"

@implementation TipShowMessage

+(void)showMessage:(NSString *)message{
    UIWindow * window = [UIApplication sharedApplication].keyWindow;
    UIView *showview =  [[UIView alloc]init];
    showview.backgroundColor = [UIColor blackColor];
    
    showview.frame = CGRectMake(1, 1, 1, 1);
    showview.alpha = 1.0f;
    showview.layer.cornerRadius = 5.0f;
    showview.layer.masksToBounds = YES;
    showview.backgroundColor = [UIColor colorWithExadecimalString:APP_Progress_Color];
    [window addSubview:showview];
    
    CGSize LabelSize = CGSizeZero;
    UILabel *label = [[UILabel alloc]init];
    LabelSize = [TipShowMessage sizeWithFont:[UIFont systemFontOfSize:17] maxSize:CGSizeMake(APP_MAIN_SCREEN_WIDTH - 20, APP_MAIN_SCREEN_HEIGHT /2) message:message];
    label.frame = CGRectMake(10, 5, LabelSize.width, LabelSize.height);
    label.text = message;
    label.textColor = [UIColor whiteColor];
    label.textAlignment = NSTextAlignmentCenter;
    label.numberOfLines = 0;
    label.backgroundColor = [UIColor clearColor];
    label.font = [UIFont boldSystemFontOfSize:15];
    [showview addSubview:label];
    showview.frame = CGRectMake((APP_MAIN_SCREEN_WIDTH - LabelSize.width - 20)/2, APP_MAIN_SCREEN_HEIGHT / 2, LabelSize.width+20, LabelSize.height+10);
    [UIView animateWithDuration:2.5 animations:^{
        showview.alpha = 0;
    } completion:^(BOOL finished) {
        [showview removeFromSuperview];
    }];
}


+(void)showMessage:(NSString *)message delayTime:(float)delayTime{
    UIWindow * window = [UIApplication sharedApplication].keyWindow;
    UIView *showview =  [[UIView alloc]init];
    showview.backgroundColor = [UIColor blackColor];
    
    showview.frame = CGRectMake(1, 1, 1, 1);
    showview.alpha = 1.0f;
    showview.layer.cornerRadius = 5.0f;
    showview.layer.masksToBounds = YES;
    showview.backgroundColor = [UIColor colorWithExadecimalString:APP_Progress_Color];
    [window addSubview:showview];
    
    
    CGSize LabelSize = CGSizeZero;
    UILabel *label = [[UILabel alloc]init];
    
    LabelSize = [TipShowMessage sizeWithFont:[UIFont systemFontOfSize:17] maxSize:CGSizeMake(APP_MAIN_SCREEN_WIDTH - 20, APP_MAIN_SCREEN_HEIGHT /2) message:message];

    label.frame = CGRectMake(10, 5, LabelSize.width, LabelSize.height);
    label.text = message;
    label.textColor = [UIColor whiteColor];
    label.textAlignment = NSTextAlignmentCenter;
    label.numberOfLines = 0;
    label.backgroundColor = [UIColor clearColor];
    label.font = [UIFont boldSystemFontOfSize:15];
    [showview addSubview:label];
    
    showview.frame = CGRectMake((APP_MAIN_SCREEN_WIDTH - LabelSize.width - 20)/2, APP_MAIN_SCREEN_HEIGHT / 2, LabelSize.width+20, LabelSize.height+10);
    [UIView animateWithDuration:delayTime animations:^{
        showview.alpha = 0;
    } completion:^(BOOL finished) {
        [showview removeFromSuperview];
    }];
}

+(void)showMessage:(NSString *)message showYOffset:(float)showYOffset delayTime:(float)delayTime{
    UIWindow * window = [UIApplication sharedApplication].keyWindow;
    UIView *showview =  [[UIView alloc]init];
    showview.backgroundColor = [UIColor blackColor];
    
    showview.frame = CGRectMake(1, 1, 1, 1);
    showview.alpha = 1.0f;
    showview.layer.cornerRadius = 5.0f;
    showview.layer.masksToBounds = YES;
    showview.backgroundColor = [UIColor colorWithExadecimalString:APP_Progress_Color];
    [window addSubview:showview];
    
    
    CGSize LabelSize = CGSizeZero;
    UILabel *label = [[UILabel alloc]init];

    LabelSize = [TipShowMessage sizeWithFont:[UIFont systemFontOfSize:17] maxSize:CGSizeMake(APP_MAIN_SCREEN_WIDTH - 20, APP_MAIN_SCREEN_HEIGHT /2) message:message];
    label.frame = CGRectMake(10, 5, LabelSize.width, LabelSize.height);
    label.text = message;
    label.textColor = [UIColor whiteColor];
    label.textAlignment = NSTextAlignmentCenter;
    label.numberOfLines = 0;
    label.backgroundColor = [UIColor clearColor];
    label.font = [UIFont boldSystemFontOfSize:15];
    [showview addSubview:label];
    showview.frame = CGRectMake((APP_MAIN_SCREEN_WIDTH - LabelSize.width - 20)/2, APP_MAIN_SCREEN_HEIGHT - showYOffset, LabelSize.width+20, LabelSize.height+10);
    [UIView animateWithDuration:delayTime animations:^{
        showview.alpha = 0;
    } completion:^(BOOL finished) {
        [showview removeFromSuperview];
    }];
}

+(void)showMessage:(NSString *)message maxSize:(CGSize)maxSize showFrame:(CGRect)showFrame delayTime:(float)delayTime{
    UIWindow * window = [UIApplication sharedApplication].keyWindow;
    UIView *showview =  [[UIView alloc]init];
    showview.backgroundColor = [UIColor blackColor];
    
    showview.frame = CGRectMake(1, 1, 1, 1);
    showview.alpha = 1.0f;
    showview.layer.cornerRadius = 5.0f;
    showview.layer.masksToBounds = YES;
    showview.backgroundColor = [UIColor colorWithExadecimalString:APP_Progress_Color];
    [window addSubview:showview];
    
    
    CGSize LabelSize = CGSizeZero;
    UILabel *label = [[UILabel alloc]init];
    LabelSize = [TipShowMessage sizeWithFont:[UIFont systemFontOfSize:17] maxSize:maxSize message:message];

    label.frame = CGRectMake(10, 5, LabelSize.width, LabelSize.height);
    label.text = message;
    label.textColor = [UIColor whiteColor];
    label.textAlignment = NSTextAlignmentCenter;
    label.numberOfLines = 0;
    label.backgroundColor = [UIColor clearColor];
    label.font = [UIFont boldSystemFontOfSize:15];
    [showview addSubview:label];
    showview.frame = showFrame;
    [UIView animateWithDuration:delayTime animations:^{
        showview.alpha = 0;
    } completion:^(BOOL finished) {
        [showview removeFromSuperview];
    }];
}


+(void)showMessage:(NSString *)message labelcolor:(UIColor *)labelcolor backImage:(UIColor *)backColor labelFont:(UIFont *)labelFont delayTime:(float)delayTime
{
    UIWindow * window = [UIApplication sharedApplication].keyWindow;
    UIView *showview =  [[UIView alloc]init];
    if (backColor) {
        showview.backgroundColor = backColor;
    }else{
        showview.backgroundColor = [UIColor blackColor];
    }
    showview.frame = CGRectMake(1, 1, 1, 1);
    showview.alpha = 1.0f;
    showview.layer.cornerRadius = 5.0f;
    showview.layer.masksToBounds = YES;
    showview.backgroundColor = [UIColor colorWithExadecimalString:APP_Progress_Color];
    [window addSubview:showview];
    
    CGSize LabelSize = CGSizeZero;
    UILabel *label = [[UILabel alloc]init];
    LabelSize = [TipShowMessage sizeWithFont:[UIFont systemFontOfSize:17] maxSize:CGSizeMake(APP_MAIN_SCREEN_WIDTH - 20, 9000) message:message];
    label.frame = CGRectMake(10, 5, LabelSize.width, LabelSize.height);
    label.text = message;
    if (labelcolor) {
        label.textColor = labelcolor;
    }else{
        label.textColor = [UIColor whiteColor];
    }
    label.textAlignment = NSTextAlignmentCenter;
    label.numberOfLines = 0;
    label.backgroundColor = [UIColor clearColor];
    if (labelFont) {
        label.font = labelFont;
    }else{
        label.font = [UIFont boldSystemFontOfSize:15];
    }
    [showview addSubview:label];
    
    showview.frame = CGRectMake((APP_MAIN_SCREEN_WIDTH - LabelSize.width - 20)/2, APP_MAIN_SCREEN_HEIGHT / 2, LabelSize.width+20, LabelSize.height+10);
    [UIView animateWithDuration:delayTime animations:^{
        showview.alpha = 0;
    } completion:^(BOOL finished) {
        [showview removeFromSuperview];
    }];
}

+(void)showMessage:(NSString *)message labelcolor:(UIColor *)labelcolor backImage:(UIColor *)backColor labelFont:(UIFont *)labelFont maxSize:(CGSize)maxSize showFrame:(CGRect)showFrame delayTime:(float)delayTime{
    UIWindow * window = [UIApplication sharedApplication].keyWindow;
    UIView *showview =  [[UIView alloc]init];
    if (backColor) {
        showview.backgroundColor = backColor;
    }else{
        showview.backgroundColor = [UIColor blackColor];
    }
    showview.frame = CGRectMake(1, 1, 1, 1);
    showview.alpha = 1.0f;
    showview.layer.cornerRadius = 5.0f;
    showview.layer.masksToBounds = YES;
    showview.backgroundColor = [UIColor colorWithExadecimalString:APP_Progress_Color];
    [window addSubview:showview];
    
    CGSize LabelSize = CGSizeZero;
    UILabel *label = [[UILabel alloc]init];
    LabelSize = [TipShowMessage sizeWithFont:[UIFont systemFontOfSize:17] maxSize:maxSize message:message];
    label.frame = CGRectMake(10, 5, LabelSize.width, LabelSize.height);
    label.text = message;
    if (labelcolor) {
        label.textColor = labelcolor;
    }else{
        label.textColor = [UIColor whiteColor];
    }
    label.textAlignment = NSTextAlignmentCenter;
    label.numberOfLines = 0;
    label.backgroundColor = [UIColor clearColor];
    if (labelFont) {
        label.font = labelFont;
    }else{
        label.font = [UIFont boldSystemFontOfSize:15];
    }
    [showview addSubview:label];
    showview.frame = showFrame;
    [UIView animateWithDuration:delayTime animations:^{
        showview.alpha = 0;
    } completion:^(BOOL finished) {
        [showview removeFromSuperview];
    }];
}

//返回字符串所占用的尺寸.
+(CGSize)sizeWithFont:(UIFont *)font maxSize:(CGSize)maxSize message:(NSString *)mesaage
{
    NSDictionary *attrs = @{NSFontAttributeName : font};
    return [mesaage boundingRectWithSize:maxSize options:NSStringDrawingUsesLineFragmentOrigin attributes:attrs context:nil].size;
}

@end
