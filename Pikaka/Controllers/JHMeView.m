//
//  JHMeView.m
//  PiKaKa
//
//  Created by 王建华 on 16/1/4.
//  Copyright © 2016年 王建华. All rights reserved.
//

#import "JHMeView.h"
#import "JHV1234.h"
#import "ContectDetail.h"

@interface JHMeView ()<areaNumberDelegate>
@property(nonatomic, strong) UILabel *label;
@end

@implementation JHMeView

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor purpleColor];

    self.label = [[UILabel alloc] initWithFrame:CGRectMake(200, 200, 150, 50)];
    [self.view addSubview:self.label];
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 200, 200)];
    [btn setBackgroundImage:[self imageWithColor:[UIColor redColor]] forState:UIControlStateNormal];
    [btn setBackgroundImage:[self imageWithColor:[UIColor greenColor]] forState:UIControlStateHighlighted];
//    [btn addTarget:self action:@selector(keyboardNomalColor:) forControlEvents:UIControlEventTouchUpInside];
//    [btn addTarget:self action:@selector(keyboardHilightedColor:) forControlEvents:UIControlEventTouchDown];
    NSLog(@"123");
    [self.view addSubview:btn];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    JHV1234 *jv = [JHV1234 new];
    jv.navigationItem.title = @"你好啊";
    UIBarButtonItem *rightIterm = [[UIBarButtonItem alloc] initWithTitle:@"编辑" style:UIBarButtonItemStylePlain target:self action:@selector(editContext)];
    
    UIBarButtonItem *leftItems = [[UIBarButtonItem alloc] init];
    [leftItems setTitle: @"返回"];
    
    jv.navigationItem.rightBarButtonItem = rightIterm;
    self.navigationItem.backBarButtonItem = leftItems;
    
//    jv.myBlock = ^(NSString *str){
//        self.label.text = str;
//    };
    jv.delegate = self;
    [self.navigationController pushViewController:jv animated:YES];
    
    //model出一个控制器
//    [jv setModalTransitionStyle:UIModalTransitionStylePartialCurl];
//    [self presentModalViewController:jv animated:YES];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
-(void)areaNumber:(NSString *)number andAreaName:(NSString *)name{
    self.label.text = number;
}

-(void) editContext{
    ContectDetail *contextDetail = [ContectDetail new];
    [self.navigationController pushViewController:contextDetail animated:YES];
}

//  颜色转换为背景图片
- (UIImage *)imageWithColor:(UIColor *)color {
    CGRect rect = CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

//键盘正常颜色
-(void)keyboardNomalColor:(UIButton*)keyBtn{
    keyBtn.backgroundColor = [UIColor colorWithRed:248.0/255.0 green:248.0/255.0 blue:248.0/255.0 alpha:1.0];
}

//键盘高亮颜色
-(void)keyboardHilightedColor:(UIButton*)keyBtn{
    keyBtn.backgroundColor = [UIColor greenColor];
}
@end
