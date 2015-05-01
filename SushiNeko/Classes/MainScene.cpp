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
    
    this->pieceIndex = 0;
    this->pieceLastSide = Side::Left;
    this->gameState = GameState::Title;
    
    auto rootNode = CSLoader::createNode("MainScene.csb");
    auto lifeBG = rootNode->getChildByName("lifeBG");
    this->timeBar = lifeBG->getChildByName<Sprite*>("lifeBar");
    this->character = rootNode->getChildByName<Character*>("character");
    this->pieceNode = rootNode->getChildByName("pieceNode");
    this->scoreLabel = rootNode->getChildByName<cocos2d::ui::Text*>("scoreLabel");
    
    // Initialize the sushi pieces
    for (int i = 0; i < 10; ++i)
    {
        Piece* piece = dynamic_cast<Piece*>(CSLoader::createNode("Piece.csb"));
        
        // set chopstick side
        this->pieceLastSide = this->getSideForObstacle(this->pieceLastSide);
        piece->setObstacleSide(this->pieceLastSide);
        
        piece->setPosition(0.0f, piece->getSpriteHeight() / 2.0f * i);
        
        this->pieceNode->addChild(piece);
        
        this->pieces.pushBack(piece);
    }
    
    this->resetGameState();
    
    this->addChild(rootNode);

    return true;
}

void MainScene::resetGameState()
{
    this->timeLeft = 5.0f;
    this->score = 0;
    Piece* piece = this->pieces.at(this->pieceIndex);
    piece->setObstacleSide(Side::None);
}

void MainScene::setupTouchHandling()
{
    auto touchListener = EventListenerTouchOneByOne::create();
    
    touchListener->onTouchBegan = [&](Touch* touch, Event* event)
    {
        switch (this->gameState)
        {
                
            case GameState::Title:
                this->triggerReady();
                break;
                
            case GameState::Ready:
                this->triggerPlaying();
                // No break here!
                
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
                
                if (this->checkGameOver())
                {
                    return true;
                }
                
                this->character->runHitAnimation();
                
                this->stepTower();
                
                if (this->checkGameOver())
                {
                    return true;
                }
                
                this->setTimeLeft(this->timeLeft + 0.25f);
                this->setScore(this->score + 1);
            }
                break;
                
            case GameState::GameOver:
                this->resetGameState();
                this->triggerReady();
                break;
        }
        
        return true;
    };
    
    this->getEventDispatcher()->addEventListenerWithSceneGraphPriority(touchListener, this);
}

void MainScene::onEnter()
{
    Layer::onEnter();
    
    this->flyingPiecePosition = this->pieceNode->getPosition();
    
    this->setupTouchHandling();
    
    this->triggerTitle();
    
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

void MainScene::stepTower()
{
    Piece* currentPiece = this->pieces.at(this->pieceIndex);
    
    this->animateHitPiece(currentPiece->getObstacleSide());
    
    currentPiece->setPosition(currentPiece->getPosition() + Vec2(0.0f, currentPiece->getSpriteHeight() / 2.0f * 10.0f));
    
    currentPiece->setLocalZOrder(currentPiece->getLocalZOrder() + 1);
    
    currentPiece->setObstacleSide(this->getSideForObstacle(this->pieceLastSide));
    this->pieceLastSide = currentPiece->getObstacleSide();
    
    cocos2d::MoveBy* moveAction = cocos2d::MoveBy::create(0.15f, Vec2(0.0f, -1.0f * currentPiece->getSpriteHeight() / 2.0f));
    this->pieceNode->runAction(moveAction);
    
    this->pieceIndex = (this->pieceIndex + 1) % 10;
}

void MainScene::animateHitPiece(Side obstacleSide)
{
    Piece* flyingPiece = dynamic_cast<Piece*>(CSLoader::createNode("Piece.csb"));
    cocostudio::timeline::ActionTimeline* pieceTimeline = CSLoader::createTimeline("Piece.csb");
    
    pieceTimeline->setLastFrameCallFunc([flyingPiece]() {
        flyingPiece->removeFromParent();
    });
    
    flyingPiece->setObstacleSide(obstacleSide);
    
    flyingPiece->setPosition(this->flyingPiecePosition);
    this->addChild(flyingPiece);
    
    Side characterSide = this->character->getSide();
    
    std::string animationName = (characterSide == Side::Left) ? std::string("moveRight") : std::string("moveLeft");
    
    flyingPiece->runAction(pieceTimeline);
    pieceTimeline->play(animationName, false);
}

#pragma mark -
#pragma mark Game State Methods

void MainScene::triggerTitle()
{
    this->gameState = GameState::Title;
    
    cocostudio::timeline::ActionTimeline* titleTimeline = CSLoader::createTimeline("MainScene.csb");
    this->stopAllActions();
    this->runAction(titleTimeline);
    titleTimeline->play("title", false);
}

void MainScene::triggerReady()
{
    this->gameState = GameState::Ready;
    
    auto scene = this->getChildByName("Scene");
    
    cocos2d::Sprite* tapLeft = scene->getChildByName<cocos2d::Sprite*>("tapLeft");
    cocos2d::Sprite* tapRight = scene->getChildByName<cocos2d::Sprite*>("tapRight");
    
    tapLeft->setOpacity(255);
    tapRight->setOpacity(255);
    
    cocostudio::timeline::ActionTimeline* readyTimeline = CSLoader::createTimeline("MainScene.csb");
    this->stopAllActions();
    this->runAction(readyTimeline);
    readyTimeline->play("ready", true);
}

void MainScene::triggerPlaying()
{
    this->gameState = GameState::Playing;
    
    this->scoreLabel->setVisible(true);
    
    auto scene = this->getChildByName("Scene");
    
    // fade out tap buttons
    cocos2d::Sprite* tapLeft = scene->getChildByName<cocos2d::Sprite*>("tapLeft");
    cocos2d::Sprite* tapRight = scene->getChildByName<cocos2d::Sprite*>("tapRight");
    
    cocos2d::FadeOut* leftFade = cocos2d::FadeOut::create(0.35f);
    cocos2d::FadeOut* rightFade = cocos2d::FadeOut::create(0.35f);
    
    tapLeft->runAction(leftFade);
    tapRight->runAction(rightFade);
}

void MainScene::triggerGameOver()
{
    this->gameState = GameState::GameOver;
    
    this->setTimeLeft(0.0f);
    
    auto scene = this->getChildByName("Scene");
    auto mat = scene->getChildByName("mat");
    cocos2d::ui::Text* gameOverScoreLabel = mat->getChildByName<cocos2d::ui::Text*>("gameOverScoreLabel");
    
    gameOverScoreLabel->setString(std::to_string(this->score));
    
    cocostudio::timeline::ActionTimeline* gameOverTimeline = CSLoader::createTimeline("MainScene.csb");
    this->stopAllActions();
    this->runAction(gameOverTimeline);
    gameOverTimeline->play("gameOver", false);
}

#pragma mark -
#pragma mark Getters / Setters

void MainScene::setTimeLeft(float timeLeft)
{
    this->timeLeft = MIN(MAX(0.0f, timeLeft), 10.0f);
    
    this->timeBar->setScale(timeLeft / 10.0f, 1.0f);
}

void MainScene::setScore(int score)
{
    this->score = score;
    
    this->scoreLabel->setString(std::to_string(this->score));
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

bool MainScene::checkGameOver()
{
    bool gameOver = false;
    
    Piece* currentPiece = this->pieces.at(this->pieceIndex);
    
    if (currentPiece->getObstacleSide() == this->character->getSide())
    {
        gameOver = true;
        this->triggerGameOver();
    }
    
    return gameOver;
}
