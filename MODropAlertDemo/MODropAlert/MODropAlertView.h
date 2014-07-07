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
    DropAlertButtonFail
};

typedef void (^blk)(void);

@class MODropAlertView;

@protocol MODropAlertViewDelegate;

@interface MODropAlertView : UIView

@property (nonatomic, weak) id<MODropAlertViewDelegate> delegate;

- (instancetype)initDropAlertWithTitle:(NSString *)title description:(NSString *)description okButtonTitle:(NSString *)okButtonTitle;
- (instancetype)initDropAlertWithTitle:(NSString *)title description:(NSString *)description okButtonTitle:(NSString *)okButtonTitle cancelButtonTitle:(NSString *)cancelButtonTitle;
- (instancetype)initDropAlertWithTitle:(NSString *)title description:(NSString *)description okButtonTitle:(NSString *)okButtonTitle okButtonColor:(UIColor *)okBtnColor;
- (instancetype)initDropAlertWithTitle:(NSString *)title description:(NSString *)description okButtonTitle:(NSString *)okButtonTitle cancelButtonTitle:(NSString *)cancelButtonTitle okButtonColor:(UIColor *)okBtnColor cancelButtonColor:(UIColor *)cancelBtnColor;

- (instancetype)initDropAlertWithTitle:(NSString *)title description:(NSString *)description okButtonTitle:(NSString *)okButtonTitle successBlock:(blk)successBlock;
- (instancetype)initDropAlertWithTitle:(NSString *)title description:(NSString *)description okButtonTitle:(NSString *)okButtonTitle cancelButtonTitle:(NSString *)cancelButtonTitle successBlock:(blk)successBlock failureBlock:(blk)failureBlock;
- (instancetype)initDropAlertWithTitle:(NSString *)title description:(NSString *)description okButtonTitle:(NSString *)okButtonTitle okButtonColor:(UIColor *)okBtnColor successBlock:(blk)successBlock;
- (instancetype)initDropAlertWithTitle:(NSString *)title description:(NSString *)description okButtonTitle:(NSString *)okButtonTitle cancelButtonTitle:(NSString *)cancelButtonTitle okButtonColor:(UIColor *)okBtnColor cancelButtonColor:(UIColor *)cancelBtnColor successBlock:(blk)successBlock failureBlock:(blk)failureBlock;

- (void)show;
- (void)dismiss:(DropAlertButtonType)buttonType;

@end

@protocol MODropAlertViewDelegate <NSObject>

@optional
- (void)alertViewWillAppear:(MODropAlertView *)alertView;
- (void)alertViewDidAppear:(MODropAlertView *)alertView;
- (void)alertViewWilldisappear:(MODropAlertView *)alertView buttonType:(DropAlertButtonType)buttonType;
- (void)alertViewDidDisappear:(MODropAlertView *)alertView buttonType:(DropAlertButtonType)buttonType;
- (void)alertViewPressButton:(MODropAlertView *)alertView buttonType:(DropAlertButtonType)buttonType;

@end
