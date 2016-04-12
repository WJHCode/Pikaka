//
//  JHMessageView.m
//  PiKaKa
//
//  Created by 王建华 on 16/1/4.
//  Copyright © 2016年 王建华. All rights reserved.
//

#import "JHMessageView.h"
//#import "<#header#>"

@interface JHMessageView ()

@end

@implementation JHMessageView

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor yellowColor];
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(100, 100, 20, 30)];
    
    label.text = @"北京欢迎你";
    [label setFont:[UIFont systemFontOfSize:18]];
    label.textAlignment = NSTextAlignmentCenter;
    [label setTextColor:[UIColor blackColor]];
    label.backgroundColor = [UIColor grayColor];
    
    CGFloat screenW = [UIScreen mainScreen].bounds.size.width;
    CGFloat screenH = [UIScreen mainScreen].bounds.size.height;
//    label.center = CGPointMake(screenW , screenH);
//    label.center = self.view.center;
    
    [label sizeToFit];
    label.frame = CGRectMake(screenW/2 - label.frame.size.width/2, screenH/2, label.frame.size.width, label.frame.size.height);
    [self.view addSubview:label];
    
    NSString * str = @"hello, world!";
    NSData * data = [str dataUsingEncoding:NSUTF8StringEncoding]; //NSString转换成NSData类型
    NSLog(@"%s", data.bytes);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
   
}

@end
