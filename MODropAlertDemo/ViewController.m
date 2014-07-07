//
//  ViewController.m
//  MODropAlertDemo
//
//  Created by Ahn JungMin on 2014. 7. 1..
//  Copyright (c) 2014년 Ahn JungMin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidAppear:(BOOL)animated
{
}

- (IBAction)pressButton:(id)sender
{
    MODropAlertView *alertView = [[MODropAlertView alloc]initDropAlertWithTitle:@"Alert"
                                                                    description:@"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                                                                  okButtonTitle:@"OK"
                                                              cancelButtonTitle:@"Cancel"];
    alertView.delegate = self;
    [alertView show];
}

- (IBAction)pressSingleButton:(id)sender
{
    MODropAlertView *alertView = [[MODropAlertView alloc]initDropAlertWithTitle:@"Info"
                                                                    description:@"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                                                                  okButtonTitle:@"OK"];
    alertView.delegate = self;
    [alertView show];
}

- (IBAction)pressCustomSingleButton:(id)sender
{
    MODropAlertView *alertView = [[MODropAlertView alloc]initDropAlertWithTitle:@"Custom Info" 
                                                                    description:@"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua." 
                                                                  okButtonTitle:@"OK" 
                                                                  okButtonColor:[UIColor grayColor]];
    alertView.delegate = self;
    [alertView show];
}

- (IBAction)pressCustomDoubleButton:(id)sender
{
//    MODropAlertView *alertView = [[MODropAlertView alloc]initDropAlertWithTitle:@"Custom Info" 
//                                                                    description:@"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua." 
//                                                                  okButtonTitle:@"OK" 
//                                                              cancelButtonTitle:@"Cancel" 
//                                                                  okButtonColor:[UIColor blueColor] 
//                                                              cancelButtonColor:[UIColor greenColor]];
//    alertView.delegate = self;
//    [alertView show];
    MODropAlertView *alert = [[MODropAlertView alloc]initDropAlertWithTitle:@"Custom Info"
                                                                description:@"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                                                              okButtonTitle:@"OK"
                                                          cancelButtonTitle:@"Cancel"
                                                               successBlock:^{
                                                                   NSLog(@"Success Log");
                                                               }
                                                               failureBlock:^{
                                                                   NSLog(@"Fail Log");
                                                               }];
    [alert show];
}


#pragma mark - AlertView Delegate Methods

//- (void)alertViewWillAppear:(MODropAlertView *)alertView
//{
//    NSLog(@"%s", __FUNCTION__);
//}
//- (void)alertViewDidAppear:(MODropAlertView *)alertView
//{
//    NSLog(@"%s", __FUNCTION__);
//}
//
//- (void)alertViewWilldisappear:(MODropAlertView *)alertView
//{
//    NSLog(@"%s", __FUNCTION__);
//}
//
//- (void)alertViewDidDisappear:(MODropAlertView *)alertView
//{
//    NSLog(@"%s", __FUNCTION__);
//}
//
//- (void)alertViewPressButton:(MODropAlertView *)alertView buttonType:(DropAlertButtonType)buttonType
//{
//    NSLog(@"%s", __FUNCTION__);
//    
//    NSLog(@"ButtonType %d", buttonType);
//    [alertView dismiss];
//}

@end
