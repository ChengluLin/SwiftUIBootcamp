//
//  StacksBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by ChengLu on 2024/11/5.
//

import SwiftUI

struct StacksBootcamp: View {
    // Vstacks -> Vertical
    // Hstacks -> Horizontal
    // Zstacks -> zIndex(back to front)
    var body: some View {
        VStack {
            Rectangle()
                .fill(Color.red)
                .frame(width: 100, height: 100)
            Rectangle()
                .fill(Color.green)
                .frame(width: 100, height: 100)
            Rectangle()
                .fill(Color.orange)
                .frame(width: 100, height: 100)
            
        }
    }
}

#Preview {
    StacksBootcamp()
}
