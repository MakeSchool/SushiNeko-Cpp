#include "MainScene.h"
#include "cocostudio/CocoStudio.h"
#include "ui/CocosGUI.h"
#include "Character.h"
#include "CharacterReader.h"

USING_NS_CC;

using namespace cocostudio::timeline;

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
    
    CSLoader* instance = CSLoader::getInstance();
    // Be very careful to do CharacterReader::getInstance, not CharacterReader::getInstance() which will crash
    instance->registReaderObject("CharacterReader", (ObjectFactory::Instance) CharacterReader::getInstance);
    
    this->timeLeft = 5.0f;
    this->score = 0;
    this->pieceIndex = 0;
    this->pieceLastSide = Side::Left;
    this->gameState = GameState::Ready;
    
    auto rootNode = CSLoader::createNode("MainScene.csb");

    auto lifeBG = rootNode->getChildByName("lifeBG");
    this->timeBar = lifeBG->getChildByName<Sprite*>("lifeBar");
    
    this->character = rootNode->getChildByName<Character*>("characterNode");
    
    addChild(rootNode);

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
                
                this->timeLeft += 0.25f;
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

void MainScene::setTimeLeft(float timeLeft)
{
    this->timeLeft = MIN(MAX(0.0f, timeLeft), 10.0f);
    
    this->timeBar->setScale(timeLeft / 10.0f, 1.0f);

}
