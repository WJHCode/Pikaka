//
//  JHV1234.m
//  PiKaKa
//
//  Created by 王建华 on 16/1/22.
//  Copyright © 2016年 王建华. All rights reserved.
//

#import "JHV1234.h"

@interface JHV1234 ()

@end

@implementation JHV1234

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor orangeColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
[self dismissViewControllerAnimated:YES completion:^{
    NSLog(@"退出JHV控制器");
}];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
