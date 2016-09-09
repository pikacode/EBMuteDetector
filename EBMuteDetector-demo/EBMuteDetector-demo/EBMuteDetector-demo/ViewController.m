//
//  ViewController.m
//  EBMuteDetector-demo
//
//  Created by wuxingchen on 16/8/31.
//  Copyright © 2016年 57380422@qq.com. All rights reserved.
//

#import "ViewController.h"
#import "EBMuteDetector.h"

@interface ViewController ()

@end

@implementation ViewController

- (IBAction)btn:(id)sender {

}
- (IBAction)pause:(id)sender {
    [EBMuteDetector pause];
}

- (IBAction)resume:(id)sender {
    [EBMuteDetector resume];
}

- (void)viewDidLoad {
    [super viewDidLoad];

//    [EBMuteDetector detectComplete:^(BOOL isMute) {
//        if (isMute) {
//            NSLog(@"1");
//        }else{
//            NSLog(@"0");
//        }
//    }];

    [EBMuteDetector vibrate];

    EBMuteDetectorFrequency = 1;

    [EBMuteDetector detecting:^(BOOL isMute) {
        if (isMute) {
            NSLog(@"1");
        }else{
            NSLog(@"0");
        }
    }];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
