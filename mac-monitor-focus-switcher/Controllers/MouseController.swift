//
//  MouseController.swift
//  mac-monitor-focus-switcher
//
//  Created by 小松幹弥 on 2024/07/31.
//

import Foundation
import AppKit

class MouseController {
    func moveMouse(to coordinates: (x: Double, y: Double)) {
        let mouseLocation = CGPoint(x: coordinates.x, y: coordinates.y)
        CGWarpMouseCursorPosition(mouseLocation)
    }
}
