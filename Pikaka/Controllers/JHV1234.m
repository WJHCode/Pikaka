//
//  JHV1234.m
//  PiKaKa
//
//  Created by 王建华 on 16/1/22.
//  Copyright © 2016年 王建华. All rights reserved.
//

#import "JHV1234.h"

@interface JHV1234 ()
@property(nonatomic, strong)UITextField *myText;
@end

@implementation JHV1234

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor orangeColor];
    
    self.myText = [[UITextField alloc] initWithFrame:CGRectMake(100, 100, 150, 50)];
    self.myText.placeholder = @"赶紧输入吧";
    
    [self.view addSubview:self.myText];
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(200, 400, 100, 100)];
    btn.backgroundColor = [UIColor redColor];
    btn.titleLabel.text = @"返回上一页";
    btn.tintColor = [UIColor blackColor];
    [btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn];

    
    UIBarButtonItem *leftItems = [[UIBarButtonItem alloc] init];
    [leftItems setTitle: @"返回"];
    self.navigationItem.backBarButtonItem = leftItems;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
[self dismissViewControllerAnimated:YES completion:^{
    NSLog(@"退出JHV控制器");
}];
    
//    UIAlertView *alert = [UIAlertView alloc] in
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
-(void)btnClick{
    self.myBlock(self.myText.text);
    [self.navigationController popViewControllerAnimated:YES];
}
@end
