//
//  AppDelegate.swift
//  mac-monitor-focus-switcher
//
//  Created by 小松幹弥 on 2024/08/02.
//

import Cocoa
import SwiftUI

class AppDelegate: NSObject, NSApplicationDelegate {
    var shortcutManager = ShortcutManager()
    var mouseController = MouseController()
    
    func applicationDidFinishLaunching(_ notification: Notification) {
        NSEvent.addGlobalMonitorForEvents(matching: .keyDown) { [weak self] event in
            if let characters = event.characters,
               let coordinates = self?.shortcutManager.getCoordinates(for: characters) {
                self?.mouseController.moveMouse(to: coordinates)
            }
        }
    }
}
