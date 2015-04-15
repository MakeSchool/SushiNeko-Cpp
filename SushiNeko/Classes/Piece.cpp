//
//  Piece.cpp
//  SushiNeko-Cpp
//
//  Created by Daniel Haaser on 4/15/15.
//
//

#include "Piece.h"

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

Side Piece::getSide()
{
    return this->side;
}

void Piece::setSide(Side side)
{
    this->side = side;
}