//
//  GameViewController.swift
//  ZombieConga
//
//  Created by Admin on 29/07/21.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {

    override func viewDidLoad() {//Se ejeuta cuando se carga la escena
        super.viewDidLoad()
        
        if let view = self.view as! SKView? {
            // Load the SKScene from 'GameScene.sks'
            if let scene = SKScene(fileNamed: "GameScene") {
                // Set the scale mode to scale to fit the window
                scene.scaleMode = .aspectFill //Escala para que ocupe toda la pantalla
                
                // Present the scene
                view.presentScene(scene)
            }
            
            view.ignoresSiblingOrder = true //para las capas de visualizacion del juego
            
            view.showsFPS = true //muesta los fps en la parte inferior
            view.showsNodeCount = true
        }
    }

    override var shouldAutorotate: Bool {
        return true
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
}
