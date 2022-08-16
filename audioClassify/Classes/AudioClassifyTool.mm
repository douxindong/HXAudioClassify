//
//  AudioClassify.m
//  Media
//
//  Created by douxd on 2022/7/14.
//  Copyright © 2022 onefboy. All rights reserved.
//

#import "AudioClassify.h"
#import "audio_classify.hpp"

@interface AudioClassify ()
{
    IAudioClassify *net;
    
}

@end


@implementation AudioClassify

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self setup];
    }
    return self;
}

- (void)setup
{
    net = IAudioClassify::create();
    int numthread = 1;
    int result = net->init(numthread);
    if (result == 0) {
        printf("构建成功");
    }else{
        printf("构建失败");
    }
}

- (void)inferWithPcmData:(float *)pcmData score:(float *)score
{
//    float* pcmData = (float*)malloc(sizeof(float) * 128000);
//    float* score = (float*)malloc(sizeof(float) * 6);
    int inferResult = net->infer(pcmData,score);
    if (inferResult == 0) {
        printf("推理成功");
        for (int i = 0; i<6; i++) {
            printf("\n%f",score[i]);
        }
    }else{
        printf("推理失败");
    }
}

@end
