////
////  JHUpGrades.m
////  PiKaKa
////
////  Created by 王建华 on 16/2/1.
////  Copyright © 2016年 王建华. All rights reserved.
////
//
//#import "JHUpGrades.h"
//#import "JHDBManager.h"
//
//@implementation JHUpGrades{
//    JHDBManager *_dbMgr;
//}
//const static NSInteger FAMILY_LIST_DB_MANAGER_VER = 1;
//
//+ (instancetype)sharedManager
//{
//    static KSFamilyListDBManager *s_instance = nil;
//    static dispatch_once_t onceToken;
//    dispatch_once(&onceToken, ^{
//        s_instance = [[KSFamilyListDBManager alloc] init];
//    });
//    return s_instance;
//}
//
//- (id)init {
//    self = [super init];
//    if (self) {
//        _dbMgr = [JHDBManager defaultMgr];
//        
//        [self createTables];
//        
//        // 升级操作
//        NSInteger ver = [[ConfigDBManager sharedManager] familyListDBManagerVersion];
//        if (ver < 1) {
//            [[ConfigDBManager sharedManager] setFamilyListDBManagerVersion:FAMILY_LIST_DB_MANAGER_VER];
//        } else if (ver < FAMILY_LIST_DB_MANAGER_VER) {
//            [self upgrade];
//        }
//    }
//    return self;
//}
//
//- (void)upgrade {
//    //获取存储好的原版本号
//    NSInteger oldVersionNum = [[ConfigDBManager sharedManager] familyListDBManagerVersion];
//    if (FAMILY_LIST_DB_MANAGER_VER <= oldVersionNum || oldVersionNum == 0) {
//        return;
//    }
//    
//    //升级
//    [self upgrade:oldVersionNum];
//    
//    // 保存新的版本号到库中 -这里大家可以使用NSUserDefault存储
//    [[ConfigDBManager sharedManager] setFamilyListDBManagerVersion:FAMILY_LIST_DB_MANAGER_VER];
//}
//
//- (void)upgrade:(NSInteger)oldVersion {
//    if (oldVersion >= FAMILY_LIST_DB_MANAGER_VER) {
//        return;
//    }
//    switch (oldVersion) {
//        case 0:
//            break;
//        case 1:
//            [self upgradeFrom1To2];
//            break;
//        case 2:
//            break;
//        default:
//            break;
//    }
//    oldVersion ++;
//    
//    // 递归判断是否需要升级
//    [self upgrade:oldVersion];
//}
//
//- (void)upgradeFrom1To2 {
//    //这里执行Sql语句 执行版本1到版本2的更新
//}
//@end
