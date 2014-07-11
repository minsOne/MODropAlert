MODropAlert
===========

I want to make dropping alert view, so I make this custom alert view library.

![DropAlert](https://raw.githubusercontent.com/minsOne/MODropAlert/master/screencapture.gif)

(the above gif is iphone simulator animation.)

## Installation Cocoapods

as soon as..(maybe?)

## How to use it

This dropAlert view is two ways(delegate or block).

* Delegate  
```objective-c
MODropAlertView *alertView = [[MODropAlertView alloc]initDropAlertWithTitle:@"Alert"
                                                                    description:@"Lorem ipsum dolor sit amet"
                                                                  okButtonTitle:@"OK"
                                                              cancelButtonTitle:@"Cancel"];
alertView.delegate = self;
[alertView show];                                                              
```

* Delegate Main methods : 
```objective-c
// default alert view
- (instancetype)initDropAlertWithTitle:(NSString *)title description:(NSString *)description okButtonTitle:(NSString *)okButtonTitle;
- (instancetype)initDropAlertWithTitle:(NSString *)title description:(NSString *)description okButtonTitle:(NSString *)okButtonTitle cancelButtonTitle:(NSString *)cancelButtonTitle;

// custom color alert view
- (instancetype)initDropAlertWithTitle:(NSString *)title description:(NSString *)description okButtonTitle:(NSString *)okButtonTitle okButtonColor:(UIColor *)okBtnColor;
- (instancetype)initDropAlertWithTitle:(NSString *)title description:(NSString *)description okButtonTitle:(NSString *)okButtonTitle cancelButtonTitle:(NSString *)cancelButtonTitle okButtonColor:(UIColor *)okBtnColor cancelButtonColor:(UIColor *)cancelBtnColor;
```

* Block
```objective-c
MODropAlertView *alert = [[MODropAlertView alloc]initDropAlertWithTitle:@"Block AlertView" 
                                                            description:@"Lorem ipsum dolor sit amet."
                                                          okButtonTitle:@"OK"
                                                           successBlock:^{
                                                               NSLog(@"Success Log");
                                                           }];
[alert show];
```


* Block Main methods : 
```objective-c
// default alert view
- (instancetype)initDropAlertWithTitle:(NSString *)title description:(NSString *)description okButtonTitle:(NSString *)okButtonTitle successBlock:(blk)successBlock;
- (instancetype)initDropAlertWithTitle:(NSString *)title description:(NSString *)description okButtonTitle:(NSString *)okButtonTitle cancelButtonTitle:(NSString *)cancelButtonTitle successBlock:(blk)successBlock failureBlock:(blk)failureBlock;

// custom color alert view
- (instancetype)initDropAlertWithTitle:(NSString *)title description:(NSString *)description okButtonTitle:(NSString *)okButtonTitle okButtonColor:(UIColor *)okBtnColor successBlock:(blk)successBlock;
- (instancetype)initDropAlertWithTitle:(NSString *)title description:(NSString *)description okButtonTitle:(NSString *)okButtonTitle cancelButtonTitle:(NSString *)cancelButtonTitle okButtonColor:(UIColor *)okBtnColor cancelButtonColor:(UIColor *)cancelBtnColor successBlock:(blk)successBlock failureBlock:(blk)failureBlock;
```

**If you use delegate pattern, you notice action of view.**

```objective-c
- (void)alertViewWillAppear:(MODropAlertView *)alertView;
- (void)alertViewDidAppear:(MODropAlertView *)alertView;
- (void)alertViewWilldisappear:(MODropAlertView *)alertView buttonType:(DropAlertButtonType)buttonType;
- (void)alertViewDidDisappear:(MODropAlertView *)alertView buttonType:(DropAlertButtonType)buttonType;
- (void)alertViewPressButton:(MODropAlertView *)alertView buttonType:(DropAlertButtonType)buttonType;
```
