//
//  SettingsView.swift
//  NotesWatch Watch App
//
//  Created by Oleh on 11.11.2024.
//

import SwiftUI

struct SettingsView: View {
    @AppStorage("lineCount") var lineCount: Int = 1
    @State private var value: Float = 1.0
    
    func update() {
        lineCount = Int(value)
    }
    
    var body: some View {
        VStack(spacing: 8) {
            // HEADER
            HeaderView(title: "Settings")
            
            // ACTUAL LINE COUNT
            Text("Lines: \(lineCount)".uppercased())
                .fontWeight(.bold)
            
            // SLIDER
            Slider(value: Binding(get: {
                self.value
            }, set: { newValue in
                self.value = Float(newValue)
                self.update()
            }), in: 1...4, step: 1)
                .accentColor(.accentColor)
            
        } //: VSTACK
    }
}

#Preview {
    SettingsView()
}
