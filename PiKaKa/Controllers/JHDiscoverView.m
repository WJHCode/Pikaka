//
//  JHDiscoverView.m
//  PiKaKa
//
//  Created by 王建华 on 16/1/4.
//  Copyright © 2016年 王建华. All rights reserved.
//

#import "JHDiscoverView.h"

@interface JHDiscoverView ()
@property(nonatomic, strong)UILabel *label;

@end

@implementation JHDiscoverView

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor blueColor];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    self.label = [[UILabel alloc] init];
    UIFont *font = [UIFont systemFontOfSize:32];
    [self.label setFont:font];
    [self.label setTextColor:[UIColor redColor]];
    [self.label setText:@"欢迎来到我的世界，我的世界里有各种各样的神奇的事情，又让你惊奇的，又惊讶的，有惊吓的！！！"];
    [self.label sizeToFit];
    CGSize labelSize = [self.label.text sizeWithFont:font];
    CGFloat offSet = labelSize.width;
    
    self.label.frame = CGRectMake(50, 69, offSet, 20);
    [UIView animateWithDuration:10.0 delay:0 options:UIViewAnimationOptionRepeat|UIViewAnimationOptionTransitionFlipFromRight|UIViewAnimationOptionCurveLinear animations:^{
        self.label.transform = CGAffineTransformMakeTranslation(-offSet, 0);
    } completion:^(BOOL finished) {
        ;
    }];
    [self.view addSubview:self.label];
}

-(void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    [self.label removeFromSuperview];
    [self.label.layer removeAllAnimations];
}


@end
