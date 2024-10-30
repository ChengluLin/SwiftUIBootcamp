//
//  FrameBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by ChengLu on 2024/10/28.
//

import SwiftUI

struct FrameBootcamp: View {
    var frameBool: Bool = false
    var body: some View {
        if frameBool == true {
            Text("Hello, World!")
                .background(Color.green)
                .frame(height: 100)
                .background(Color.red)
        } else {
            Text("Hello, World!")
                .background(Color.red)
//                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                .frame(height: 100)
                .background(Color.green)
                .frame(width: 150)
                .background(Color.purple)
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color.pink)
                .frame(height: 400)
                .background(Color.cyan)
                .frame(maxHeight: .infinity, alignment: .top)
                .background(Color.yellow)


        }
       
    }
}

#Preview {
    FrameBootcamp()
}
