//
//  CombatHex.swift
//  Warface
//
//  Created by Mikhail Timoscenko on 15.06.16.
//  Copyright © 2016 Mylantis. All rights reserved.
//

import Foundation
import SpriteKit

enum HexType {
	case Grass
	case Mud
	case Water
}

class CombatHex {
	
	private let sprite: SKSpriteNode
	private let name: String
	private let type: HexType
	
	init(type: HexType, name: String, sprite: SKSpriteNode) {
		self.sprite = sprite
		self.type = type
		self.name = name
	}
	
}
