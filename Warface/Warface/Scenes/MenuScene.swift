//
//  MenuScene.swift
//  Warface
//
//  Created by Mikhail Timoscenko on 15.06.16.
//  Copyright © 2016 Mylantis. All rights reserved.
//

import Foundation
import SpriteKit

class MenuScene: SKScene {
	
	override func didMoveToView(view: SKView) {
		
		addChild(backgroundImage())
		addChild(startLabel())
	}
	
	override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
		menuHelper(touches)
	}
	
	private func backgroundImage() -> SKSpriteNode {
		let background = SKSpriteNode(imageNamed: "bg_main_menu")
		background.anchorPoint = CGPointZero
		background.setScale(3)
		background.zPosition = -1
		
		return background
	}
	
	private func startLabel() -> SKLabelNode {
		let start = SKLabelNode(fontNamed: "Chalkduster")
		start.fontColor = UIColor.redColor()
		start.fontSize = 48
		start.name = MenuSelections.Start.rawValue
		start.text = MenuSelections.Start.rawValue
		
		start.verticalAlignmentMode = .Center
		start.horizontalAlignmentMode = .Right
		
		start.position = CGPointMake(size.width - 100, size.height * 0.75)
		
		return start
	}
	
	private func menuHelper(touches: NSSet) {
		for touch in touches {
			let node = nodeAtPoint(touch.locationInNode(self))
			if node.name == MenuSelections.Start.rawValue {
				print("new screen")
			}
		}
	}
}

enum MenuSelections: String {
	case Start = "Start"
	case Default = "Default"
}
