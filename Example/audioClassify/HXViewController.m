//
//  HXViewController.m
//  audioClassify
//
//  Created by douxd on 08/15/2022.
//  Copyright (c) 2022 douxd. All rights reserved.
//

#import "HXViewController.h"

#import "AudioClassify.h"

@interface HXViewController ()

@end

@implementation HXViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    AudioClassify *tool = [[AudioClassify alloc] init];
//    float *data = NULL;
//    float *score = NULL;
//    [tool inferWithPcmData:data score:score];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
