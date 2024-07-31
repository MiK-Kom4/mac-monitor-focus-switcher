//
//  ContentView.swift
//  mac-monitor-focus-switcher
//
//  Created by 小松幹弥 on 2024/07/31.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var shortcutManager = ShortcutManager()
    private let mouseController = MouseController()
    
    var body: some View {
        NavigationView {
            VStack {
                List(shortcutManager.shortcuts) { shortcut in
                    Text("\(shortcut.keyCombination): (\(shortcut.coordinates.x), \(shortcut.coordinates.y))")
                }
                NavigationLink(destination: ShortcutView(shortcutManager: shortcutManager)) {
                    Text("Add Shortcut")
                }
            }
            .navigationTitle("Shortcut")
        }
        .onAppear {
            // Add keyboard shortcut observer
            NSEvent.addGlobalMonitorForEvents(matching: .keyDown) { event in
                if let characters = event.characters {
                    if let coordinates = shortcutManager.getCoordinates(for: characters) {
                        mouseController.moveMouse(to: coordinates)
                    }
                }
            }
         }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
