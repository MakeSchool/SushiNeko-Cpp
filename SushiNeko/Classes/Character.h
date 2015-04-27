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
#include "cocostudio/CocoStudio.h"

enum class Side;  // forward declaration for Side enum, declared in MainScene.h

class Character : public cocos2d::Node

{
public:
    virtual bool init() override;
    
    CREATE_FUNC(Character);
    
    virtual void onExit() override;
    
    void runHitAnimation();
    void setSide(Side side);
    Side getSide();
    
private:
    Side side;
    cocostudio::timeline::ActionTimeline* timeline;
};

#endif /* defined(__SushiNeko_Cpp__Character__) */
