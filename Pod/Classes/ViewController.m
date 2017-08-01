//
//  ViewController.m
//  motion
//
//  Created by 景彦铭 on 2017/7/5.
//  Copyright © 2017年 景彦铭. All rights reserved.
//

#import "ViewController.h"
#import "NSBundle+ToolsLib.h"
#import "UIImage+ToolsLib.h"


#import <CoreMotion/CoreMotion.h>

@interface ViewController ()

@property(nonatomic,strong)CMMotionManager * manager;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    _manager = [[CMMotionManager alloc]init];
    UIImageView * imageV = [[UIImageView alloc]initWithImage:[UIImage my_bundleImageNamed:@"Snip20170705_1"]];//[UIImage imageWithContentsOfFile:[[NSBundle bundleForClass:[self class]] pathForResource:@"Tools.bundle/Snip20170705_1" ofType:@"png"]]];
    imageV.backgroundColor = [UIColor redColor];
    [self.view addSubview:imageV];
    imageV.frame = CGRectMake(50, 50, self.view.bounds.size.width -100, self.view.bounds.size.height - 100);

    if ([_manager isAccelerometerAvailable]) {
        [_manager setAccelerometerUpdateInterval:0.01];
        [_manager startAccelerometerUpdatesToQueue:[NSOperationQueue mainQueue] withHandler:^(CMAccelerometerData * _Nullable accelerometerData, NSError * _Nullable error) {
            imageV.layer.transform = CATransform3DMakeRotation(M_PI_4, accelerometerData.acceleration.x, accelerometerData.acceleration.y, 0);
//            if (accelerometerData.acceleration.x > 1.5) {
//                [_manager stopAccelerometerUpdates];
//            }
        }];
    }
    
//    if ([_manager isDeviceMotionAvailable]) {
//        [_manager setDeviceMotionUpdateInterval:0.1];
//        [_manager startDeviceMotionUpdatesToQueue:[NSOperationQueue mainQueue] withHandler:^(CMDeviceMotion * _Nullable motion, NSError * _Nullable error) {
//            CATransform3D transform = CATransform3DIdentity;
//            transform.m11 = motion.attitude.rotationMatrix.m11;
//            transform.m12 = motion.attitude.rotationMatrix.m12;
//            transform.m13 = motion.attitude.rotationMatrix.m13;
//            transform.m21 = motion.attitude.rotationMatrix.m21;
//            transform.m22 = motion.attitude.rotationMatrix.m22;
//            transform.m23 = motion.attitude.rotationMatrix.m23;
//            transform.m31 = motion.attitude.rotationMatrix.m31;
//            transform.m32 = motion.attitude.rotationMatrix.m32;
//            transform.m33 = motion.attitude.rotationMatrix.m33;
//            
//            imageV.layer.transform = transform;
//        }];
//    }
    // Do any additional setup after loading the view, typically from a nib.
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
