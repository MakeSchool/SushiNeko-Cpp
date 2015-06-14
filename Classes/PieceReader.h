//
//  PieceReader.h
//  SushiNeko-Cpp
//
//  Created by Daniel Haaser on 4/15/15.
//
//

#ifndef __SushiNeko_Cpp__PieceReader__
#define __SushiNeko_Cpp__PieceReader__

#include "cocos2d.h"
#include "cocostudio/WidgetReader/NodeReader/NodeReader.h"

class PieceReader : public cocostudio::NodeReader
{
public:
    static PieceReader* getInstance();
    static void purge();
    cocos2d::Node* createNodeWithFlatBuffers(const flatbuffers::Table* nodeOptions);
};

#endif /* defined(__SushiNeko_Cpp__PieceReader__) */
