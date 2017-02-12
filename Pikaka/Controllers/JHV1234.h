//
//  JHV1234.h
//  PiKaKa
//
//  Created by 王建华 on 16/1/22.
//  Copyright © 2016年 王建华. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol areaNumberDelegate<NSObject>
-(void)areaNumber:(NSString *)number andAreaName:(NSString*)name;
@end

@interface JHV1234 : UITableViewController
@property(nonatomic,assign) id<areaNumberDelegate>delegate;
@property (nonatomic, copy) void (^myBlock)(NSString *pass);
@end
