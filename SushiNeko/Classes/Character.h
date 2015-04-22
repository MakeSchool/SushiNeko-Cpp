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

enum class Side;  // forward declaration for Side enum, declared in MainScene.h

class Character : public cocos2d::Node

{
public:
    virtual bool init() override;
    
    CREATE_FUNC(Character);
    
    void setSide(Side side);
    
private:
    Side side;
};

#endif /* defined(__SushiNeko_Cpp__Character__) */
