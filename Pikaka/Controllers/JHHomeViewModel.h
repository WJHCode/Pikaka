//
//  JHHomeViewModel.h
//  PiKaKa
//
//  Created by 王建华 on 16/1/16.
//  Copyright © 2016年 王建华. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JHHomeViewModel : NSObject
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *icon;
@property (nonatomic, assign) BOOL vip;

- (instancetype)initWithDic: (NSDictionary *) dic;
+ (instancetype)HomeViewWithDic: (NSDictionary *)dic;

@end
