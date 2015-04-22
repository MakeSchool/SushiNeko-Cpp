//
//  Piece.cpp
//  SushiNeko-Cpp
//
//  Created by Daniel Haaser on 4/15/15.
//
//

#include "Piece.h"
#include "MainScene.h"

USING_NS_CC;

bool Piece::init()
{
    if (! Node::init())
    {
        return false;
    }
    
    this->side = Side::None;
    
    return true;
}

float Piece::getSpriteHeight()
{
    auto verticalMovementNode = this->getChildByName("verticalMovement");
    cocos2d::Sprite* roll = verticalMovementNode->getChildByName<cocos2d::Sprite*>("roll");
    
    return roll->getContentSize().height;
}

Side Piece::getSide()
{
    return this->side;
}

void Piece::setSide(Side side)
{
    this->side = side;
    
    auto verticalMovementNode = this->getChildByName("verticalMovement");
    auto roll = verticalMovementNode->getChildByName("roll");
    
    cocos2d::Sprite* leftChopstick = roll->getChildByName<cocos2d::Sprite*>("leftChopstick");
    cocos2d::Sprite* rightChopstick = roll->getChildByName<cocos2d::Sprite*>("rightChopstick");
    
    switch (this->side)
    {
        case Side::None:
            leftChopstick->setVisible(false);
            rightChopstick->setVisible(false);
            break;
            
        case Side::Left:
            leftChopstick->setVisible(true);
            rightChopstick->setVisible(false);
            break;
            
        case Side::Right:
            rightChopstick->setVisible(true);
            leftChopstick->setVisible(false);
            break;
    }
}