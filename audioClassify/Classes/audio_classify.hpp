//
//  TestCAA.hpp
//  HXTestApp
//
//  Created by douxd on 2022/7/12.
//

#ifndef audio_classify_hpp
#define audio_classify_hpp

#include <iostream>

class IAudioClassify{
public:

    virtual ~IAudioClassify() = default;

    virtual int init(int num_thread) = 0;

    virtual int infer(const float* _pcm_in, float* _score_out) = 0;

    static IAudioClassify* create();
};

#endif /* TestCAA_hpp */
