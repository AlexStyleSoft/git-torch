//
//  ViewController.m
//  git-torch
//
//  Created by Хорошо on 08.12.16.
//  Copyright © 2016 GoodDay. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    AVCaptureDevice * device = [AVCaptureDevice defaultDeviceWithMediaType:AVMediaTypeVideo];
    if ([device hasTorch]){
        @try
        {
            [device lockForConfiguration:nil];
            device.torchMode = device.torchMode == AVCaptureTorchModeOn ? AVCaptureTorchModeOff :  AVCaptureTorchModeOn;
            [device unlockForConfiguration];
            
        }
        @catch(NSError *error)
        {
            NSLog(@"%@",[error localizedDescription]);
        }
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed:(id)sender {
}
@end
