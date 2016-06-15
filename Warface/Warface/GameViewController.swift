//
//  GameViewController.swift
//  Warface
//
//  Created by Mikhail Timoscenko on 15.06.16.
//  Copyright (c) 2016 Mylantis. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		let scene = MenuScene(size:view.frame.size)
		let skView = self.view as! SKView
		skView.showsFPS = true
		skView.showsNodeCount = true
		skView.ignoresSiblingOrder = true
		scene.scaleMode = .AspectFill
		skView.presentScene(scene)
	}
	
	override func prefersStatusBarHidden() -> Bool  {
		return true
	}
}
