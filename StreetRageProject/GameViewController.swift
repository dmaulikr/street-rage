//
//  GameViewController.swift
//  StreetRageProject
//
//  Created by David Willian Berri on 7/13/16.
//  Copyright (c) 2016 David Willian Berri. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        let skView = self.view as! SKView
        
        if skView.scene == nil {
            
            skView.showsFPS = true
            skView.showsNodeCount = true
            skView.showsPhysics = true
            
            //let gameScene = GameScene2(size: skView.bounds.size)
            let gameScene = MenuScene(size: skView.bounds.size)
            gameScene.scaleMode = .AspectFill
            
            skView.presentScene(gameScene)
            
            
        }
    }

    override func shouldAutorotate() -> Bool {
        return true
    }

    override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
        if UIDevice.currentDevice().userInterfaceIdiom == .Phone {
            return .AllButUpsideDown
        } else {
            return .All
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }

    override func prefersStatusBarHidden() -> Bool {
        return true
    }
}
