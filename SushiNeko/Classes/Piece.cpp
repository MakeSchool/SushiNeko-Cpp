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
    
    // a piece defaults to having no obstacle
    this->obstacleSide = Side::None;
    
    return true;
}

float Piece::getSpriteHeight()
{
    // this helper method returns the height of the actual displayed sprite
    
    // first grab a reference to the roll sprite
    auto verticalMovementNode = this->getChildByName("verticalMovement");
    cocos2d::Sprite* roll = verticalMovementNode->getChildByName<cocos2d::Sprite*>("roll");
    
    // then return the roll sprite's height
    return roll->getContentSize().height;
}

Side Piece::getObstacleSide()
{
    return this->obstacleSide;
}

void Piece::setObstacleSide(Side side)
{
    this->obstacleSide = side;
    
    auto verticalMovementNode = this->getChildByName("verticalMovement");
    auto roll = verticalMovementNode->getChildByName("roll");
    
    // get references to the chopstick sprites on the left and right sides
    cocos2d::Sprite* leftChopstick = roll->getChildByName<cocos2d::Sprite*>("leftChopstick");
    cocos2d::Sprite* rightChopstick = roll->getChildByName<cocos2d::Sprite*>("rightChopstick");
    
    // turn on the appropriate chopstick visiblity depending on the side the obstacle should appear on
    switch (this->obstacleSide)
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