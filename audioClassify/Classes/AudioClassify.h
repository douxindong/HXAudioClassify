//
//  AudioClassify.h
//  Media
//
//  Created by douxd on 2022/7/14.
//  Copyright © 2022 onefboy. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AudioClassify : NSObject

- (void)inferWithPcmData:(float *)pcmData score:(float *)score;

@end

NS_ASSUME_NONNULL_END
