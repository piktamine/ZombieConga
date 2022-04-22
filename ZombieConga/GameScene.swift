//
//  GameScene.swift
//  ZombieConga
//
//  Created by Admin on 29/07/21.
//

import SpriteKit
import GameplayKit

//landscape = horizontal
//portrait = verical

class GameScene: SKScene {
    //se llama antes de presentar la view
    override func didMove(to view: SKView) {
        backgroundColor = SKColor.black
        //creating sprite
        let background = SKSpriteNode(imageNamed: "background1")
        background.zPosition = -1
        //adding sprite to the scene
        addChild(background)
        //Positioning a sprite
        background.position = CGPoint(x: size.width/2, y: size.height/2)
        
        let zombie = SKSpriteNode(imageNamed: "zombie1")
        zombie.position = CGPoint(x: 400,y: 400)
        addChild(zombie)
        
    }
}
