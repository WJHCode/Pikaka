//
//  JHPins.h
//  PiKaKa
//
//  Created by 王建华 on 16/1/14.
//  Copyright © 2016年 王建华. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface JHPins : NSObject
@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *subTitle;
@property(nonatomic) CLLocationCoordinate2D newCoordinate;

-(void)setCoordunate:(CLLocationCoordinate2D)newCoordinate;
@end
