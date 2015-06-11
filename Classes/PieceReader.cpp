//
//  PieceReader.cpp
//  SushiNeko-Cpp
//
//  Created by Daniel Haaser on 4/15/15.
//
//

#include "PieceReader.h"

USING_NS_CC;

static PieceReader* _instancePieceReader = nullptr;

PieceReader* PieceReader::getInstance()
{
    if (!_instancePieceReader)
    {
        _instancePieceReader = new PieceReader();
    }
    return _instancePieceReader;
}

void PieceReader::purge()
{
    CC_SAFE_DELETE(_instancePieceReader);
}

Node* PieceReader::createNodeWithFlatBuffers(const flatbuffers::Table* nodeOptions)
{
    Piece* node = Piece::create();
    setPropsWithFlatBuffers(node, nodeOptions);
    return node;
}