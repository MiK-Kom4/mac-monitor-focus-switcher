//
//  ShortcutView.swift
//  mac-monitor-focus-switcher
//
//  Created by 小松幹弥 on 2024/07/31.
//

import SwiftUI

struct ShortcutView: View {
    @ObservedObject var shortcutManager: ShortcutManager
    @State private var keyCombination = ""
    @State private var xCoordinate = ""
    @State private var yCoordinate = ""
    
    var body: some View {
        VStack {
            TextField("Key Combination", text: $keyCombination)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            
            TextField("X Coordinate", text: $xCoordinate)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            TextField("Y Coordinate", text: $yCoordinate)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            Button(action: {
                if let x = Double(xCoordinate), let y = Double(yCoordinate) {
                    shortcutManager.addShortcut(KeyCombination: keyCombination, coordinates: (x, y))
                }
            }) {
                Text("Add Shortcut")
            }
            .padding()
        }
        .navigationTitle("Add Shortcut")
    }
}

struct ShortcutView_Previews: PreviewProvider {
    static var previews: some View {
        ShortcutView(shortcutManager: ShortcutManager())
    }
}
