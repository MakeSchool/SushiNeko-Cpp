#include "MainScene.h"
#include "cocostudio/CocoStudio.h"
#include "ui/CocosGUI.h"
#include "Character.h"
#include "CharacterReader.h"
#include "Piece.h"
#include "PieceReader.h"

USING_NS_CC;

using namespace cocostudio::timeline;

#pragma mark -
#pragma mark Lifecycle

Scene* MainScene::createScene()
{
    // 'scene' is an autorelease object
    auto scene = Scene::create();
    
    // 'layer' is an autorelease object
    auto layer = MainScene::create();

    // add layer as a child to scene
    scene->addChild(layer);

    // return the scene
    return scene;
}

// on "init" you need to initialize your instance
bool MainScene::init()
{
    //////////////////////////////
    // 1. super init first
    if ( !Layer::init() )
    {
        return false;
    }

    // Be very careful to do CharacterReader::getInstance, not CharacterReader::getInstance() which will crash
    CSLoader* instance = CSLoader::getInstance();
    instance->registReaderObject("CharacterReader", (ObjectFactory::Instance) CharacterReader::getInstance);
    instance->registReaderObject("PieceReader", (ObjectFactory::Instance) PieceReader::getInstance);
    
    this->timeLeft = 5.0f;
    this->score = 0;
    this->pieceIndex = 0;
    this->pieceLastSide = Side::Left;
    this->gameState = GameState::Ready;
    
    auto rootNode = CSLoader::createNode("MainScene.csb");
    auto lifeBG = rootNode->getChildByName("lifeBG");
    this->timeBar = lifeBG->getChildByName<Sprite*>("lifeBar");
    this->character = rootNode->getChildByName<Character*>("character");
    this->pieceNode = rootNode->getChildByName("pieceNode");
    
    // Initialize the sushi pieces
    for (int i = 0; i < 10; ++i)
    {
        Piece* piece = dynamic_cast<Piece*>(CSLoader::createNode("Piece.csb"));
        
        // set chopstick side
        this->pieceLastSide = this->getSideForObstacle(this->pieceLastSide);
        piece->setSide(this->pieceLastSide);
        
        piece->setPosition(0.0f, piece->getSpriteHeight() / 2.0f * i);
        
        this->pieceNode->addChild(piece);
        
        this->pieces.pushBack(piece);
    }
    
    this->addChild(rootNode);

    return true;
}

void MainScene::setupTouchHandling()
{
    auto touchListener = EventListenerTouchOneByOne::create();
    
    touchListener->onTouchBegan = [&](Touch* touch, Event* event)
    {
        switch (this->gameState)
        {
            case GameState::GameOver:
                break;
                
            case GameState::Ready:
                this->triggerPlaying();
                break;
                
            case GameState::Playing:
            {
                Vec2 touchLocation = this->convertTouchToNodeSpace(touch);
                
                if (touchLocation.x < this->getContentSize().width / 2.0f)
                {
                    this->character->setSide(Side::Left);
                }
                else
                {
                    this->character->setSide(Side::Right);
                }
                
                this->setTimeLeft(this->timeLeft + 0.25f);
                this->score++;
                
            }
                break;
                
            case GameState::Title:
                break;
        }
        
        return true;
    };
    
    this->getEventDispatcher()->addEventListenerWithSceneGraphPriority(touchListener, this);
}

void MainScene::onEnter()
{
    Layer::onEnter();
    
    this->setupTouchHandling();
    
    this->scheduleUpdate();
}

void MainScene::onExit()
{
    this->unscheduleUpdate();
    
    Layer::onExit();
}

#pragma mark -
#pragma mark Game Loop

void MainScene::update(float dt)
{
    Layer::update(dt);
    
    switch (this->gameState)
    {
        case GameState::Title:
            break;
            
        case GameState::Playing:
            
            this->setTimeLeft(timeLeft - dt);
            
            if (this->timeLeft <= 0.0f)
            {
                this->triggerGameOver();
            }
            
            break;
            
        case GameState::Ready:
            break;
        
        case GameState::GameOver:
            break;
    }
    

}

#pragma mark -
#pragma mark Game State Methods

void MainScene::triggerReady()
{
    this->gameState = GameState::Ready;
}

void MainScene::triggerPlaying()
{
    this->gameState = GameState::Playing;
    
    // fade out tap buttons
}

void MainScene::triggerGameOver()
{
    this->gameState = GameState::GameOver;
    
    this->setTimeLeft(0.0f);
    
    // load game over screen, display it
}

#pragma mark -
#pragma mark Getters / Setters

void MainScene::setTimeLeft(float timeLeft)
{
    this->timeLeft = MIN(MAX(0.0f, timeLeft), 10.0f);
    
    this->timeBar->setScale(timeLeft / 10.0f, 1.0f);
}

#pragma mark -
#pragma mark Utility

Side MainScene::getSideForObstacle(Side lastSide)
{
    Side side;
    
    switch (lastSide)
    {
        case Side::None:
        {
            float random = CCRANDOM_0_1();
            if (random < 0.45f)
            {
                side = Side::Left;
            }
            else if (random < 0.9f)
            {
                side = Side::Right;
            }
            else
            {
                side = Side::None;
            }
        }
            break;
            
        case Side::Left:
        case Side::Right:
            side = Side::None;
            break;
    }
    
    return side;
}
