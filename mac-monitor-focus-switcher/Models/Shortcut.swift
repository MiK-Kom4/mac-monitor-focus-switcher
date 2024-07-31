//
//  Shortcut.swift
//  mac-monitor-focus-switcher
//
//  Created by 小松幹弥 on 2024/07/31.
//

import Foundation

struct Shortcut: Identifiable {
    let id = UUID()
    var keyCombination: String
    var coordinates: (x: Double, y: Double)
}
