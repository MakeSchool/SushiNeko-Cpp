#include "MainScene.h"
#include "cocostudio/CocoStudio.h"
#include "ui/CocosGUI.h"
#include "Character.h"
#include "CharacterReader.h"
#include "Piece.h"
#include "PieceReader.h"
#include "Constants.h"

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

    // Register the readers for our custom classes
    // Be very careful to do CharacterReader::getInstance, not CharacterReader::getInstance() which will crash
    CSLoader* instance = CSLoader::getInstance();
    instance->registReaderObject("CharacterReader", (ObjectFactory::Instance) CharacterReader::getInstance);
    instance->registReaderObject("PieceReader", (ObjectFactory::Instance) PieceReader::getInstance);
    
    this->pieceIndex = 0;
    this->lastObstacleSide = Side::Left;
    this->gameState = GameState::Title;
   
    // set up references to instance variables
    auto rootNode = CSLoader::createNode("MainScene.csb");
    
    // fix resizing bug
    Size size = Director::getInstance()->getVisibleSize();
    rootNode->setContentSize(size);
    ui::Helper::doLayout(rootNode);
    
    auto lifeBG = rootNode->getChildByName("lifeBG");
    this->timeBar = lifeBG->getChildByName<Sprite*>("lifeBar");
    this->character = rootNode->getChildByName<Character*>("character");
    this->pieceNode = rootNode->getChildByName("pieceNode");
    this->scoreLabel = rootNode->getChildByName<cocos2d::ui::Text*>("scoreLabel");
    
    // initialize ten sushi pieces
    // stack their heights
    // put them in the pieces vector to track references to them
    for (int i = 0; i < 10; ++i)
    {
        Piece* piece = dynamic_cast<Piece*>(CSLoader::createNode("Piece.csb"));
        
        // set chopstick side
        this->lastObstacleSide = this->getSideForObstacle(this->lastObstacleSide);
        piece->setObstacleSide(this->lastObstacleSide);
        
        float rollHeight = piece->getSpriteHeight();
        piece->setPosition(0.0f, rollHeight / 2.0f * i);
        
        this->pieceNode->addChild(piece);
        
        this->pieces.pushBack(piece);
    }
    
    this->resetGameState();
    
    this->addChild(rootNode);

    return true;
}

void MainScene::resetGameState()
{
    // these variables must be reset every new game
    this->timeLeft = 5.0f;
    this->setScore(0);
    
    // make sure the lowest peice doesn't have an obstacle when the new game starts
    Piece* currentPiece = this->pieces.at(this->pieceIndex);
    currentPiece->setObstacleSide(Side::None);
}

void MainScene::setupTouchHandling()
{
    // create a new touchlistener
    auto touchListener = EventListenerTouchOneByOne::create();
    
    touchListener->onTouchBegan = [&](Touch* touch, Event* event)
    {
        // this code will get called every time the screen is touched
    
        switch (this->gameState)
        {
                
            // if we're on the title screen, transition to the ready state
            case GameState::Title:
                this->triggerReady();
                break;
            
            // if we're in the ready state, transition to playing
            // there's no break so that the first touch counts as a chop
            case GameState::Ready:
                this->triggerPlaying();
                // no break here!
                
            // if we're in the playing state, use the touch to chop the sushi roll
            case GameState::Playing:
            {
                // get the location of the touch in the MainScene's coordinate system
                Vec2 touchLocation = this->convertTouchToNodeSpace(touch);
                
                // check if the touch was on the left or right side of the screen
                // move the character to the appropriate side
                if (touchLocation.x < this->getContentSize().width / 2.0f)
                {
                    this->character->setSide(Side::Left);
                }
                else
                {
                    this->character->setSide(Side::Right);
                }
                
                // check if the character got moved into an obstacle
                // if it did, then end the game and return
                if (this->isGameOver())
                {
                    this->triggerGameOver();
                    return true;
                }
                
                // run the chop animation to chop the roll
                this->character->runChopAnimation();
                
                // move the roll pieces down
                this->stepTower();
                
                // check if an obstacle moved down onto the character
                // if it did, then end the game and return
                if (this->isGameOver())
                {
                    this->triggerGameOver();
                    return true;
                }
                
                // add 0.25 seconds for every chop to the timer
                this->setTimeLeft(this->timeLeft + 0.25f);
                
                // increase the score by 1 for every chop
                this->setScore(this->score + 1);
            }
                break;
                
            // if the game is over, the tap resets the game and takes us to ready state
            case GameState::GameOver:
                this->resetGameState();
                this->triggerReady();
                break;
        }
        
        return true;
    };
    
    // add the touch listener to the event dispatcher
    this->getEventDispatcher()->addEventListenerWithSceneGraphPriority(touchListener, this);
}

void MainScene::onEnter()
{
    // call the superclass method onEnter
    Layer::onEnter();
    
    // get the position where we will spawn the flying piece
    this->flyingPiecePosition = this->pieceNode->getPosition();
    
    // setup the touch handler
    this->setupTouchHandling();
    
    // trigger the title state and animation
    this->triggerTitle();
    
    // schedule the update method to be called every frame
    this->scheduleUpdate();
}

#pragma mark -
#pragma mark Game Loop

void MainScene::update(float dt)
{
    // update is called before every new frame is rendered
    // dt is the amount of time elapsed (in seconds) between this update call and the previous one
    
    // call the superclass method update
    Layer::update(dt);
    
    if (this->gameState == GameState::Playing)
    {
        // if the game is being played
        
        // reduce the timer by the amount of time elapsed
        this->setTimeLeft(timeLeft - dt);
        
        // if the timer is less than or equal to 0, the game is over
        if (this->timeLeft <= 0.0f)
        {
            this->triggerGameOver();
        }
    }
}

void MainScene::stepTower()
{
    // get a reference to the lowest piece
    Piece* currentPiece = this->pieces.at(this->pieceIndex);
    
    // animate a piece flying out from the bottom
    this->animateHitPiece(currentPiece->getObstacleSide());
    
    // move the lowest piece to the top of the tower
    currentPiece->setPosition(currentPiece->getPosition() + Vec2(0.0f, currentPiece->getSpriteHeight() / 2.0f * 10.0f));
    
    // set the zOrder of the piece so that it appears on top of the others
    currentPiece->setLocalZOrder(currentPiece->getLocalZOrder() + 1);
    
    // set the side of the obstacle, based on the side of the obstacle of the piece right before this one
    currentPiece->setObstacleSide(this->getSideForObstacle(this->lastObstacleSide));
    this->lastObstacleSide = currentPiece->getObstacleSide();
    
    // animate all the pieces down
    cocos2d::MoveBy* moveAction = cocos2d::MoveBy::create(0.15f, Vec2(0.0f, -1.0f * currentPiece->getSpriteHeight() / 2.0f));
    this->pieceNode->runAction(moveAction);
    
    // change the index referencing the lowest piece
    this->pieceIndex = (this->pieceIndex + 1) % 10;
}

void MainScene::animateHitPiece(Side obstacleSide)
{
    // load a new piece from CSLoader
    Piece* flyingPiece = dynamic_cast<Piece*>(CSLoader::createNode("Piece.csb"));
    
    // make sure the flying piece obstacle matches the correct side of the real one
    flyingPiece->setObstacleSide(obstacleSide);
    
    // set the position and add it to the scene
    flyingPiece->setPosition(this->flyingPiecePosition);
    this->addChild(flyingPiece);
    
    // load the piece's animation timeline
    cocostudio::timeline::ActionTimeline* pieceTimeline = CSLoader::createTimeline("Piece.csb");
    
    // on the last frame of the animation, remove the piece from the scene
    pieceTimeline->setLastFrameCallFunc([this, &flyingPiece]() {
        this->removeChild(flyingPiece);
    });
    
    // get the side the character is on
    Side characterSide = this->character->getSide();
    
    // if the character is on the left, animate the piece to the right and vice-versa
    std::string animationName = (characterSide == Side::Left) ? std::string("moveRight") : std::string("moveLeft");
    
    // run the action so the timeline gets update ticks
    flyingPiece->runAction(pieceTimeline);
    
    // tell the timeline to play the animation
    pieceTimeline->play(animationName, false);
}

#pragma mark -
#pragma mark Game State Methods

void MainScene::triggerTitle()
{
    // set the game state to Title
    this->gameState = GameState::Title;
    
    // load and run the title animation
    cocostudio::timeline::ActionTimeline* titleTimeline = CSLoader::createTimeline("MainScene.csb");
    this->stopAllActions();
    this->runAction(titleTimeline);
    titleTimeline->play("title", false);
}

void MainScene::triggerReady()
{
    // set the game state to Ready
    this->gameState = GameState::Ready;
    
    // get a reference to the top-most node
    auto scene = this->getChildByName("Scene");
    
    // get references to the left and right tap sprites
    cocos2d::Sprite* tapLeft = scene->getChildByName<cocos2d::Sprite*>("tapLeft");
    cocos2d::Sprite* tapRight = scene->getChildByName<cocos2d::Sprite*>("tapRight");
    
    // make sure the sprites are visible
    tapLeft->setOpacity(255);
    tapRight->setOpacity(255);
    
    // load and run the ready animations
    cocostudio::timeline::ActionTimeline* readyTimeline = CSLoader::createTimeline("MainScene.csb");
    this->stopAllActions();
    this->runAction(readyTimeline);
    readyTimeline->play("ready", true);
}

void MainScene::triggerPlaying()
{
    // set the game state to Playing
    this->gameState = GameState::Playing;
    
    // make the score label visible
    this->scoreLabel->setVisible(true);
    
    // get a reference to the top-most node
    auto scene = this->getChildByName("Scene");
    
    // get references to the left and right tap sprite
    cocos2d::Sprite* tapLeft = scene->getChildByName<cocos2d::Sprite*>("tapLeft");
    cocos2d::Sprite* tapRight = scene->getChildByName<cocos2d::Sprite*>("tapRight");

    // fade out the left and right tap sprites
    cocos2d::FadeOut* leftFade = cocos2d::FadeOut::create(0.35f);
    cocos2d::FadeOut* rightFade = cocos2d::FadeOut::create(0.35f);
    
    tapLeft->runAction(leftFade);
    tapRight->runAction(rightFade);
}

void MainScene::triggerGameOver()
{
    // set the game state to Game Over
    this->gameState = GameState::GameOver;
    
    // set the timer to 0
    this->setTimeLeft(0.0f);
    
    // get a reference to the top-most node
    auto scene = this->getChildByName("Scene");
    
    // get a reference to tha mat sprite
    auto mat = scene->getChildByName("mat");
    
    // get a reference to the game over score label
    cocos2d::ui::Text* gameOverScoreLabel = mat->getChildByName<cocos2d::ui::Text*>("gameOverScoreLabel");
    
    // set the score label to the user's score
    gameOverScoreLabel->setString(StringUtils::format("%i", this->score));
    
    // load and run the game over animations
    cocostudio::timeline::ActionTimeline* gameOverTimeline = CSLoader::createTimeline("MainScene.csb");
    this->stopAllActions();
    this->runAction(gameOverTimeline);
    gameOverTimeline->play("gameOver", false);
}

#pragma mark -
#pragma mark Getters / Setters

void MainScene::setTimeLeft(float timeLeft)
{
    // clamp the time left timer to between 0 and 10 seconds
    this->timeLeft = clampf(timeLeft, 0.0f, 10.0f);
    
    // update the UI to reflect the correct time left
    this->timeBar->setScaleX(timeLeft / 10.0f);
}

void MainScene::setScore(int score)
{
    // update the score instance variable
    this->score = score;
    
    // update the score label
    this->scoreLabel->setString(StringUtils::format("%i", this->score));
}

#pragma mark -
#pragma mark Utility

Side MainScene::getSideForObstacle(Side lastSide) const
{
    Side side;
    
    switch (lastSide)
    {
        case Side::None:
        {
            // generate a random number between 0.0f and 1.0f
            float random = CCRANDOM_0_1();
            
            // if there wasn't an obstacle in the last piece
            // then there's a 45% chance of there being one on the left
            // 45% chance of there being one on the right
            // and 10% chance of there being no obstacle
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
            
            // if there was an obstacle in the last piece, then there isn't one for this piece
        case Side::Left:
        case Side::Right:
            side = Side::None;
            break;
    }
    
    return side;
}

bool MainScene::isGameOver() const
{
    bool gameOver = false;
    
    // get a reference to the lowest piece
    Piece* currentPiece = this->pieces.at(this->pieceIndex);
    
    // if the obstacle and the character are touching, then game over
    if (currentPiece->getObstacleSide() == this->character->getSide())
    {
        gameOver = true;
    }
    
    return gameOver;
}
