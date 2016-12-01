//
//  PINPasswordView.h
//  PINPassword-master
//
//  Created by 黄海燕 on 16/11/30.
//  Copyright © 2016年 huanghy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PINPasswordView : UIView

/**
 the password is user inputed
 */
@property (nonatomic, copy) void(^passwordDidChangeBlock)(NSString *password);

/**
 set element count, default is 4, remove all elements and creat new elemets when it was set
 */
@property (nonatomic, assign) NSInteger elementCount;

/**
 set element color, default is balck color
 */
@property (nonatomic, strong) UIColor *elementBorderColor;

/**
 set element margein, default is 4 point
 */
@property (nonatomic, assign) CGFloat elementMargin;

/**
 auto hide the keyboard when input password was completed, default is YES
 */
@property (nonatomic, assign) BOOL autoHideKeyboard;

/**
 set element border width, default's 1 point
 */
@property (nonatomic, assign) CGFloat elementBorderWidth;

/**
 clear all password
 */
- (void)clearPassword;

/**
 show keyboard
 */
- (void)showKeyboard;
/**
 hide keyboard
 */
- (void)hideKeyboard;


@end
