//
//  ContextMenuBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by ChengLu on 2025/2/20.
//

import SwiftUI

struct ContextMenuBootcamp: View {
    
    @State var backgroundColor: Color = Color.blue
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10.0) {
            Image(systemName: "house.fill")
                .font(.title)
            Text("Swiftful Thinking")
                .font(.headline)
            Text("How to use Context Menu")
                .font(.subheadline)
        }
        .foregroundStyle(.white)
        .padding(30)
        .background(backgroundColor.cornerRadius(30))
        .contextMenu(menuItems: {
            
            Button(action: {
                backgroundColor = .yellow
            }, label: {
                Label("Share Post", systemImage: "flame.fill")
            })
            
            Button(action: {
                backgroundColor = .green
            }, label: {
                Text("Report post")
            })
            
            Button(action: {
                backgroundColor = .red
            }, label: {
                Label("Like post", systemImage: "heart.fill")
            })
            

        })
        
    }
}

#Preview {
    ContextMenuBootcamp()
}
