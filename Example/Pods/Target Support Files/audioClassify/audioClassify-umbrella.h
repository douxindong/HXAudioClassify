#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "AudioClassify.h"
#import "audio_classify.hpp"

FOUNDATION_EXPORT double audioClassifyVersionNumber;
FOUNDATION_EXPORT const unsigned char audioClassifyVersionString[];

