//
//  ContentView.swift
//  mac-monitor-focus-switcher
//
//  Created by 小松幹弥 on 2024/07/31.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0.0) {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            VStack(alignment: .leading) {
                Text("Hello, Komatsu")
                    .multilineTextAlignment(.center)
                Text("test")
                    .font(.subheadline)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
