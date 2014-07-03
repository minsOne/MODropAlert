//
//  MODropAlertView.h
//  MODropAlertDemo
//
//  Created by Ahn JungMin on 2014. 7. 1..
//  Copyright (c) 2014년 minsOne. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, DropAlertViewType) {
    DropAlertDefault,
    DropAlertCustom
};

typedef NS_ENUM(NSInteger, DropAlertButtonType) {
    DropAlertButtonOK,
    DropAlertButtonFail,
    DropAlertButtonDefault
};

@class MODropAlertView;

@protocol MODropAlertViewDelegate;

@interface MODropAlertView : UIView

@property (nonatomic, weak) id<MODropAlertViewDelegate> delegate;

- (instancetype)initDropAlertWithTitle:(NSString *)title description:(NSString *)description okButtonTitle:(NSString *)okButtonTitle;
- (instancetype)initDropAlertWithTitle:(NSString *)title description:(NSString *)description okButtonTitle:(NSString *)okButtonTitle cancelButtonTitle:(NSString *)cancelButtonTitle;
- (instancetype)initDropAlertWithTitle:(NSString *)title description:(NSString *)description okButtonTitle:(NSString *)okButtonTitle okButtonColor:(UIColor *)okBtnColor;
- (instancetype)initDropAlertWithTitle:(NSString *)title description:(NSString *)description okButtonTitle:(NSString *)okButtonTitle cancelButtonTitle:(NSString *)cancelButtonTitle okButtonColor:(UIColor *)okBtnColor cancelButtonColor:(UIColor *)cancelBtnColor;

- (void)show;
- (void)dismiss;

@end

@protocol MODropAlertViewDelegate <NSObject>

@optional
- (void)alertViewWillAppear:(MODropAlertView *)alertView;
- (void)alertViewDidAppear:(MODropAlertView *)alertView;
- (void)alertViewWilldisappear:(MODropAlertView *)alertView;
- (void)alertViewDidDisappear:(MODropAlertView *)alertView;
- (void)alertViewPressButton:(MODropAlertView *)alertView buttonType:(DropAlertButtonType)buttonType;

@end
