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

@interface JHMeView ()
@property(nonatomic, strong) UILabel *label;
@end

@implementation JHMeView

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor purpleColor];

    self.label = [[UILabel alloc] initWithFrame:CGRectMake(200, 200, 150, 50)];
    [self.view addSubview:self.label];

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
    
    jv.myBlock = ^(NSString *str){
        self.label.text = str;
    };
    
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


-(void) editContext{
    ContectDetail *contextDetail = [ContectDetail new];
    [self.navigationController pushViewController:contextDetail animated:YES];
}
@end
