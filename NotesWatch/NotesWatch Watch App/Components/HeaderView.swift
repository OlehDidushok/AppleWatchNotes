//
//  HeaderView.swift
//  NotesWatch Watch App
//
//  Created by Oleh on 11.11.2024.
//

import SwiftUI

struct HeaderView: View {
    var title: String = ""
    var body: some View {
        VStack {
            // TITLE
            if title != "" {
                Text(title.uppercased())
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(.accentColor)
            }
            // SEPARATOR
            
            HStack {
                Capsule()
                    .frame(height: 1)
                
                Image(systemName: "note.text")
                
                Capsule()
                    .frame(height: 1)
            } //: HSTACK
            .foregroundColor(.accentColor)
        } //: VSTACK
    }
}

#Preview {
        HeaderView(title: "Credits")
        HeaderView()
}
