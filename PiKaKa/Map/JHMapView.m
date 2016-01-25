//  JHMapView.m
//  PiKaKa
//
//  Created by 王建华 on 16/1/13.
//  Copyright © 2016年 王建华. All rights reserved.
//

#import "JHMapView.h"
//#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>
#import "JHPins.h"

@interface JHMapView ()<CLLocationManagerDelegate,MKMapViewDelegate>
@property(nonatomic, strong)CLLocationManager *clmgr;
@property (nonatomic, strong) MKMapView *mapView;
@property (nonatomic, assign) CLLocationDegrees latitide;
@property (nonatomic, assign) CLLocationDegrees longitude;
@end

@implementation JHMapView

- (void)viewDidLoad {
    [super viewDidLoad];
    //检测是否开启GPS定位服务
    if (![CLLocationManager locationServicesEnabled]) {
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"提示" message:@"您没有开启定位服务" preferredStyle:UIAlertControllerStyleActionSheet];
        [alert addAction:[UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:nil]];
        [self presentViewController:alert animated:YES completion:nil];
        return;
    }
    
    //获取用户位置
    self.clmgr = [[CLLocationManager alloc] init];
    if ([CLLocationManager authorizationStatus] != kCLAuthorizationStatusAuthorizedAlways) {
        [self.clmgr requestAlwaysAuthorization];
    }
    
    self.clmgr.desiredAccuracy = kCLLocationAccuracyBest;
    self.clmgr.delegate = self;
    
    [self.clmgr startUpdatingLocation];
    
    
    
    //添加地图视图
    self.mapView = [[MKMapView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT)];
    self.mapView.delegate = self;
    
    //设置mapview属性
    self.mapView.mapType = MKMapTypeStandard;
    self.mapView.showsUserLocation = YES;
    self.mapView.zoomEnabled = YES;
    self.mapView.scrollEnabled = YES;
    
    [self.view addSubview:self.mapView];
    
}

-(void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray<CLLocation *> *)locations{
    //获取位置
    CLLocation *location = [locations lastObject];
    self.latitide = location.coordinate.latitude;//维度
    self.longitude = location.coordinate.longitude;//经度
    
    //设置大头针
    JHPins *pin = [[JHPins alloc] init];
    pin.title = @"您当前位置";
    
    [pin setCoordunate:CLLocationCoordinate2DMake(self.latitide, self.longitude)];
//    NSArray *tempAry = @[pin];
//    [self.mapView addAnnotation:tempAry];
    
    //创建用户坐标s
    CLLocationCoordinate2D center = CLLocationCoordinate2DMake(self.latitide, self.longitude);
    MKCoordinateSpan span = MKCoordinateSpanMake(2.085171, 1.530672);
    [self.mapView setRegion:MKCoordinateRegionMake(center, span)];
    
}



@end
