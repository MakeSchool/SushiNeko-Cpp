//
//  Character.h
//  SushiNeko-Cpp
//
//  Created by Daniel Haaser on 4/15/15.
//
//

#ifndef __SushiNeko_Cpp__Character__
#define __SushiNeko_Cpp__Character__

#include "cocos2d.h"

class Character : public cocos2d::Sprite
{
public:
    virtual bool init() override;
    
    CREATE_FUNC(Character);
};

#endif /* defined(__SushiNeko_Cpp__Character__) */
