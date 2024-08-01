//
//  mac_monitor_focus_switcherApp.swift
//  mac-monitor-focus-switcher
//
//  Created by 小松幹弥 on 2024/07/31.
//

import SwiftUI

@main
struct mac_monitor_focus_switcherApp: App {
    @NSApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(appDelegate.shortcutManager)
        }
    }
}
