//
//  Character.cpp
//  SushiNeko-Cpp
//
//  Created by Daniel Haaser on 4/15/15.
//
//

#include "Character.h"
#include "MainScene.h"

USING_NS_CC;

bool Character::init()
{
    if (! Node::init())
    {
        return false;
    }
    
    // Character starts on the left side
    this->side = Side::Left;
    
    // Load the character animation timeline, 
    this->timeline = CSLoader::createTimeline("Character.csb");
    this->timeline->retain();
    
    return true;
}

void Character::onExit()
{
    this->timeline->release();
    
    Node::onExit();
}

void Character::runHitAnimation()
{
    this->stopAllActions();
    this->runAction(this->timeline);
    this->timeline->play("chop", false);
}

Side Character::getSide()
{
    return this->side;
}

void Character::setSide(Side side)
{
    this->side = side;
    
    switch (this->side)
    {
        case Side::Right:
            this->setScale(-1.0f, 1.0f);
            break;
            
        case Side::Left:
            this->setScale(1.0f, 1.0f);
            break;
            
        case Side::None:
            break;
    }
}