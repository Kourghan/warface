//
//  HexFactory.swift
//  Warface
//
//  Created by Mikhail Timoscenko on 15.06.16.
//  Copyright © 2016 Mylantis. All rights reserved.
//

import Foundation
import SpriteKit

class HexFactory {
	
	class func hexForType(type: HexType) -> CombatHex {
		let hex: CombatHex
		
		switch type {
		case .Water:
			hex = waterHex()
		case .Mud:
			hex = mudHex()
		case .Grass:
			hex = grassHex()
		}
		
		return hex
	}
	
	private class func waterHex() -> CombatHex {
		return CombatHex(type: .Water, name: "water", sprite: SKSpriteNode(imageNamed: "hex_water"))
	}
	
	private class func mudHex() -> CombatHex {
		return CombatHex(type: .Mud, name: "mud", sprite: SKSpriteNode(imageNamed: "hex_mud"))
	}
	
	private class func grassHex() -> CombatHex {
		return CombatHex(type: .Grass, name: "grass", sprite: SKSpriteNode(imageNamed: "hex_grass"))
	}
	
}
