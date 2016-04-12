//
//  JHHomeView.m
//  PiKaKa
//
//  Created by 王建华 on 16/1/16.
//  Copyright © 2016年 王建华. All rights reserved.
//

#import "JHHomeView.h"
#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
#define SCREEN_HIDTH [UIScreen mainScreen].bounds.size.height
@interface JHHomeView ()
@end

@implementation JHHomeView

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.rowHeight = 55;
//    self.tableView.backgroundColor = [UIColor whiteColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *reuseId = @"reuseId";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:reuseId];
    
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:reuseId];
    }
    
    if (indexPath.row == 0) {
        cell.textLabel.text = @"张三";
        UIImageView *wjImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"002.png"]];
        [cell setValue:wjImageView forKey:@"imageView"];
        cell.detailTextLabel.text = @"详情资料";
        cell.detailTextLabel.textColor = [UIColor blackColor];
    }else if (indexPath.row == 1){
        UIImageView *wjImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"003.png"]];
        cell.textLabel.text = @"13527143516";
        
        UIButton *btn1 = [[UIButton alloc] initWithFrame:CGRectMake(SCREEN_WIDTH - 100, 5, 44, 44)];
        UIButton *btn2 = [[UIButton alloc] initWithFrame:CGRectMake(SCREEN_WIDTH - 60, 5, 44, 44)];
        
        btn1.backgroundColor = [UIColor blueColor];
        btn2.backgroundColor = [UIColor redColor];
        
        UIView *leftView = [[UIView alloc] initWithFrame:cell.detailTextLabel.frame];
        [leftView addSubview:btn1];
        [leftView addSubview:btn2];
        
        [cell addSubview:leftView];
        
    }else if (indexPath.row == 2){
        cell.textLabel.text = @"3";
    }
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    return 0.1;
}
//下面两个方法用来使分割线从边框顶端开始
-(void)viewDidLayoutSubviews
{
    if ([self.tableView respondsToSelector:@selector(setSeparatorInset:)]) {
        [self.tableView setSeparatorInset:UIEdgeInsetsMake(0,0,0,10)];
    }
    
    if ([self.tableView respondsToSelector:@selector(setLayoutMargins:)]) {
        [self.tableView setLayoutMargins:UIEdgeInsetsMake(0,0,0,10)];
    }
}

-(void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if ([cell respondsToSelector:@selector(setSeparatorInset:)]) {
        [cell setSeparatorInset:UIEdgeInsetsZero];
    }
    
    if ([cell respondsToSelector:@selector(setLayoutMargins:)]) {
        [cell setLayoutMargins:UIEdgeInsetsZero];
    }
}


@end
