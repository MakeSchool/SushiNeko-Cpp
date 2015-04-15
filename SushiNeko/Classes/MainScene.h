#ifndef __MAIN_SCENE_H__
#define __MAIN_SCENE_H__

#include "cocos2d.h"
#include "ui/CocosGUI.h"

enum class Side
{
    Left,
    Right,
    None
};

enum class GameState
{
    Title,
    Ready,
    Playing,
    GameOver
};

class MainScene : public cocos2d::Layer
{
public:
    // there's no 'id' in cpp, so we recommend returning the class instance pointer
    static cocos2d::Scene* createScene();

    // Here's a difference. Method 'init' in cocos2d-x returns bool, instead of returning 'id' in cocos2d-iphone
    virtual bool init();

    // implement the "static create()" method manually
    CREATE_FUNC(MainScene);
    
private:
    float timeLeft;
    int score;
    int pieceIndex;
    Side pieceLastSide;
    GameState gameState;
    
    cocos2d::Sprite* timeBar;
    cocos2d::ui::Text* scoreLabel;
    
//    cocos2d::Vector<<#class T#>>

    
};

#endif // __MAIN_SCENE_H__
