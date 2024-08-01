//
//  ContentView.swift
//  mac-monitor-focus-switcher
//
//  Created by 小松幹弥 on 2024/07/31.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var shortcutManager : ShortcutManager
    
    var body: some View {
        NavigationView {
            VStack {
                List(shortcutManager.shortcuts) { shortcut in
                    Text("\(shortcut.keyCombination): (\(shortcut.coordinates.x), \(shortcut.coordinates.y))")
                }
                NavigationLink(destination: ShortcutView()) {
                    Text("Add Shortcut")
                }
            }
            .navigationTitle("Shortcuts")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(ShortcutManager())
    }
}
