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
    
    this->side = Side::Right;
    
    return true;
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