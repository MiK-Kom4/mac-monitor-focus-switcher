//
//  ShortcutManager.swift
//  mac-monitor-focus-switcher
//
//  Created by 小松幹弥 on 2024/07/31.
//

import Foundation

class ShortcutManager: ObservableObject {
    @Published var shortcuts: [Shortcut] = []
    
    func addShortcut(KeyCombination: String, coordinates: (x: Double, y: Double)) {
        let shortcut = Shortcut(keyCombination: KeyCombination, coordinates: coordinates)
        shortcuts.append(shortcut)
    }
    
    func getCoordinates(for keyCombination: String) -> (x: Double, y: Double)? {
        return shortcuts.first { $0.keyCombination == keyCombination }?.coordinates
    }
}
