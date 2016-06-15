//
//  MenuRouter.swift
//  Warface
//
//  Created by Mikhail Timoscenko on 15.06.16.
//  Copyright © 2016 Mylantis. All rights reserved.
//

import Foundation
import UIKit
import SpriteKit

class MenuRouter {
	
	class func execute(context: SKView, selection: MenuSelections) {
		switch selection {
		case .Start:
			presentBattleScene(context)
		case .Default:
			fallthrough
		default:
			break
		}
	}
	
	private class func presentBattleScene(context: SKView) {
		let scene = CombatScene(size: context.frame.size)
		let transition = SKTransition.crossFadeWithDuration(0.25)
		context.presentScene(scene, transition: transition)
	}
	
}
