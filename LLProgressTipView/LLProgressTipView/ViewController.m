//
//  ViewController.m
//  LLProgressTipView
//
//  Created by 赵广亮 on 16/7/22.
//  Copyright © 2016年 zhaoguangliang. All rights reserved.
//

#import "ViewController.h"
#import "LLProgressView.h"
@interface ViewController ()
@property(nonatomic,strong)LLProgressView *progressView;
@property(nonatomic,assign)CGFloat number;
@end

@implementation ViewController
- (IBAction)addValue:(id)sender {
    [_progressView setProgress:_number += 0.1];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    _number = 0.632;
    _progressView = [[LLProgressView alloc] initWithFrame:CGRectMake(0, 0, 150, 150) trackColor:[UIColor blackColor] progressColor:[UIColor redColor] lineWidth:15 progressValue:_number fontSize:24 autoLoad:YES];
    _progressView.center = self.view.center;
    
    self.view.backgroundColor = [UIColor cyanColor];
    [self.view addSubview:_progressView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
